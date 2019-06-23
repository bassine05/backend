# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_23_212333) do

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "PostalCode"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_cities_on_country_id"
  end

  create_table "contacts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "fax"
    t.string "mail"
    t.integer "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "domains", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "expiration_date"
    t.string "status"
    t.bigint "registrar_id"
    t.bigint "contact_id"
    t.bigint "extension_id"
    t.bigint "operation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_domains_on_contact_id"
    t.index ["extension_id"], name: "index_domains_on_extension_id"
    t.index ["operation_id"], name: "index_domains_on_operation_id"
    t.index ["registrar_id"], name: "index_domains_on_registrar_id"
  end

  create_table "extensions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facturations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "num"
    t.decimal "account", precision: 10
    t.decimal "remise", precision: 10
    t.date "dateEnvoi"
    t.date "dateLimite"
    t.bigint "registrar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["registrar_id"], name: "index_facturations_on_registrar_id"
  end

  create_table "operations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "type"
    t.bigint "tarification_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tarification_id"], name: "index_operations_on_tarification_id"
  end

  create_table "premium_domains", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "offre"
    t.date "date_debut"
    t.date "date_fin"
    t.bigint "categorie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categorie_id"], name: "index_premium_domains_on_categorie_id"
  end

  create_table "registrars", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "fax"
    t.string "mail"
    t.string "url"
    t.string "adresse"
    t.string "NINEA"
    t.string "GURID"
    t.string "IDEXTERNE"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_registrars_on_city_id"
  end

  create_table "reserved_domains", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "code_auth"
    t.text "motif"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_reserved_domains_on_tag_id"
  end

  create_table "servers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "ip_adress"
    t.bigint "domain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["domain_id"], name: "index_servers_on_domain_id"
  end

  create_table "tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "motif"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tarifications", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.decimal "price", precision: 10
    t.string "type"
    t.date "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cities", "countries"
  add_foreign_key "domains", "contacts"
  add_foreign_key "domains", "extensions"
  add_foreign_key "domains", "operations"
  add_foreign_key "domains", "registrars"
  add_foreign_key "facturations", "registrars"
  add_foreign_key "operations", "tarifications"
  add_foreign_key "premium_domains", "categories", column: "categorie_id"
  add_foreign_key "registrars", "cities"
  add_foreign_key "reserved_domains", "tags"
  add_foreign_key "servers", "domains"
end
