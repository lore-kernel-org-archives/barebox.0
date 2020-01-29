Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwpsJ-0000TJ-2J
 for barebox@lists.infradead.org; Wed, 29 Jan 2020 16:07:35 +0000
Received: by mail-lj1-x241.google.com with SMTP id y6so19099810lji.0
 for <barebox@lists.infradead.org>; Wed, 29 Jan 2020 08:07:30 -0800 (PST)
MIME-Version: 1.0
References: <CAEKVsgZHZR2b28wcMcpac4Qa3KebrXMRf14STZ8GCum0NmnLgg@mail.gmail.com>
 <a0c0afa2-cb44-3e40-b7e7-962fd80f2902@pengutronix.de>
In-Reply-To: <a0c0afa2-cb44-3e40-b7e7-962fd80f2902@pengutronix.de>
From: Cameron Ferguson <cameron.bare86@gmail.com>
Date: Wed, 29 Jan 2020 16:07:17 +0000
Message-ID: <CAEKVsgYu15u7d6ptaU7aZGy6OXOhN7743aLdGOz_3fZOPK2JpQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Small tweak to get ACPI watchdog working (iTCO)
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org

> Please turn it to a proper device driver and send a patch when
> you got it working. :) Check e.g. drivers/watchdog/orion_wdt.c
> to see how a barebox watchdog driver looks like.


I'm not overly concerned with creating a proper watchdog driver...
right now I just need to start the watchdog timer running.


> I don't understand where this 0x10000 comes from. x86 I/O ports are 16-bits.


In order to write to ACPI addres 0x460, I can do this:

    *(unsigned *)(0x10460) = 0;

This works fine on x86.


> As you noticed writes aren't enough. You need the reads as well, as they
> might have side effects.


I've put all the reads and writes in now.


> This should be "WDAT". And then you are supposed to parse the ACPI table
> to arrive at the addresses you need to use instead of hardcoding them.
>
> The kernel code has a struct acpi_table_wdat that defines the layout


Barebox is missing the function "acpi_get_table". I briefly looked
into copying it from the Linux kernel but after a few minutes I just
decided to copy the hex values and hard-code them into my program.

I'm still tinkering about with this. Still no joy. Here's what I have now:

#define Cameron_read32(p) ioread32(p)
#define Cameron_write32(n,p)    (*(volatile unsigned int __force   *)(p) = (n))
#define Cameron_write32_rargs(n,p)    (Cameron_write32(p,n))

#define printks(...) (mdelay(500), printk( __VA_ARGS__ ))

struct list_head *g_instructions[MAX_WDAT_ACTIONS];

struct wdat_wdt g_wdat;

void Populate_Wdat_Table(void)
{
    printks("Cameron : Populating the WDAT table\n");

    static char unsigned const my_table[] = {

        /* acpi_table_header */
        0x57,0x44,0x41,0x54,0x04,0x01,0x00,0x00,0x01,
        0xCA,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

        /* + acpi_acpi_table_wdat */
        0x20,0x00,0x00,0x00,0xFF,0x00,0xFF,0xFF,
        0xFF,0x00,0x00,0x00,0x58,0x02,0x00,0x00,
        0xFF,0x03,0x00,0x00,0x02,0x00,0x00,0x00,
        0x81,0x00,0x00,0x00,0x08,0x00,0x00,0x00
    };

    struct acpi_table_wdat const *const tbl = (struct acpi_table_wdat
const *)&*my_table;

    g_wdat.period = tbl->timer_period;
    //g_wdat.wdd.min_hw_heartbeat_ms = g_wdat.period * tbl->min_count;
    //g_wdat.wdd.max_hw_heartbeat_ms = g_wdat.period * tbl->max_count;
    g_wdat.stopped_in_sleep = tbl->flags & ACPI_WDAT_STOPPED;
    //g_wdat.wdd.info = &wdat_wdt_info;
    //g_wdat.wdd.ops = &wdat_wdt_ops;
    //g_wdat.pdev = pdev;
};

void Populate_Instruction_List(void)
{
    printks("Cameron : Populating the instruction table\n");

    static char unsigned const hex_instructions[] = {
         0x01,0x82,0x00,0x00,0x01,0x0A,0x00,0x03,0x60,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x04,0x00,0x00,0x00,0xFF,0x03,0x00,0x00
        ,0x06,0x83,0x00,0x00,0x01,0x0A,0x10,0x03,0x70,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x03,0x00,0x00,0xFF,0x03,0x00,0x00
        ,0x08,0x00,0x00,0x00,0x01,0x01,0x0B,0x03,0x68,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x00,0x00
        ,0x09,0x82,0x00,0x00,0x01,0x01,0x0B,0x03,0x68,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x00,0x00
        ,0x0A,0x00,0x00,0x00,0x01,0x01,0x0B,0x03,0x68,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x01,0x00,0x00,0x00
        ,0x0B,0x82,0x00,0x00,0x01,0x01,0x0B,0x03,0x68,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x01,0x00,0x00,0x00
        ,0x20,0x00,0x00,0x00,0x01,0x01,0x11,0x03,0x64,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x01,0x00,0x00,0x00
        ,0x21,0x82,0x00,0x00,0x01,0x01,0x11,0x03,0x64,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x01,0x00,0x00,0x00
    };

    struct acpi_wdat_entry const *const entries = (struct
acpi_wdat_entry const *)&*hex_instructions;

    for (unsigned i = 0; i < 8; ++i)
    {
        unsigned const action = entries[i].action;

        struct wdat_instruction *const instr = kzalloc(sizeof *instr,
GFP_KERNEL);

        INIT_LIST_HEAD(&instr->node);

        instr->entry = entries[i];
        instr->reg = (void __iomem *)(0x10000ull +
entries[i].register_region.address);

        printks("Cameron : Adding instruction, Action=0x%02X,
Address=0x%X, Pointer=0x%X\n", (unsigned)action,
(unsigned)entries[i].register_region.address, (unsigned)instr->reg);

        struct list_head *instructions = g_instructions[action];

        if ( !instructions )
        {
            instructions = kzalloc(sizeof *instructions, GFP_KERNEL);

            INIT_LIST_HEAD(instructions);

            g_instructions[action] = instructions;
        }

        list_add_tail(&instr->node, instructions);
    }
}

static int wdat_wdt_read(const struct wdat_instruction *instr, u32 *value)
{
    struct acpi_generic_address const *const gas =
&instr->entry.register_region;

    switch ( gas->access_width )
    {
    case 3:
        *value = Cameron_read32(instr->reg);
        printks("Cameron : Read 0x%x from pointer=0x%X\n", *value,
(unsigned)instr->reg);
        return 0;
    default:
        printks("Cameron : BAD READ\n");
        return -EINVAL;
    }
}

static int wdat_wdt_write(const struct wdat_instruction *instr, u32 value)
{
    struct acpi_generic_address const *const gas =
&instr->entry.register_region;

    switch ( gas->access_width )
    {
    case 3:
        Cameron_write32(value, instr->reg);
        printks("Cameron : Wrote 0x%x to pointer=0x%X\n", value,
(unsigned)instr->reg);
        return 0;
    default:
        printks("Cameron : BAD WRITE\n");
        return -EINVAL;
    }
}

static int wdat_wdt_run_action(unsigned int action, u32 param, u32 *retval)
{
    struct wdat_instruction *instr;

    if ( action >= ARRAY_SIZE(g_instructions) || !g_instructions[action] )
    {
        printks("Cameron : Cannot run invalid action %#x\n", action);
        return -EINVAL;
    }
    else
    {
        printks("Cameron : Running action %#x\n", action);
    }

    /* Run each instruction sequentially */
    list_for_each_entry(instr, g_instructions[action], node) {
        const struct acpi_wdat_entry *entry = &instr->entry;
        const struct acpi_generic_address *gas;
        u32 flags, value, mask, x, y;
        bool preserve;
        int ret;

        gas = &entry->register_region;

        preserve = entry->instruction & ACPI_WDAT_PRESERVE_REGISTER;
        flags = entry->instruction & ~ACPI_WDAT_PRESERVE_REGISTER;
        value = entry->value;
        mask = entry->mask;

        switch (flags) {
        case ACPI_WDAT_READ_VALUE:
            ret = wdat_wdt_read(instr, &x);
            if (ret)
                return ret;
            x >>= gas->bit_offset;
            x &= mask;
            if (retval)
                *retval = x == value;
            break;

        case ACPI_WDAT_READ_COUNTDOWN:
            ret = wdat_wdt_read(instr, &x);
            if (ret)
                return ret;
            x >>= gas->bit_offset;
            x &= mask;
            if (retval)
                *retval = x;
            break;

        case ACPI_WDAT_WRITE_VALUE:
            x = value & mask;
            x <<= gas->bit_offset;
            if (preserve) {
                printks("Cameron : Preserving value\n");
                ret = wdat_wdt_read(instr, &y);
                if (ret)
                    return ret;
                y = y & ~(mask << gas->bit_offset);
                x |= y;
            }
            printks("Cameron : Not preserving value\n");
            ret = wdat_wdt_write(instr, x);
            if (ret)
                return ret;
            break;

        case ACPI_WDAT_WRITE_COUNTDOWN:
            x = param;
            x &= mask;
            x <<= gas->bit_offset;
            if (preserve) {
                printks("Cameron : Preserving value\n");
                ret = wdat_wdt_read(instr, &y);
                if (ret)
                    return ret;
                y = y & ~(mask << gas->bit_offset);
                x |= y;
            }
            printks("Cameron : Not preserving value\n");
            ret = wdat_wdt_write(instr, x);
            if (ret)
                return ret;
            break;

        default:
            printks("Cameron : Unknown instruction: %u\n", flags);
            return -EINVAL;
        }
    }

    return 0;
}

static int wdat_wdt_enable_reboot(void)
{
    int ret;

    /*
     * WDAT specification says that the watchdog is required to reboot
     * the system when it fires. However, it also states that it is
     * recommeded to make it configurable through hardware register. We
     * enable reboot now if it is configurable, just in case.
     */
    ret = wdat_wdt_run_action(ACPI_WDAT_SET_REBOOT, 0, NULL);
    if (ret && ret != -EOPNOTSUPP) {
        printks("Cameron : Failed to enable reboot when watchdog triggers\n");
        return ret;
    }

    return 0;
}

static void wdat_wdt_boot_status(void)
{
    u32 boot_status = 0;
    int ret;

    ret = wdat_wdt_run_action(ACPI_WDAT_GET_STATUS, 0, &boot_status);
    if (ret && ret != -EOPNOTSUPP) {
        printks("Cameron : Failed to read boot status\n");
        return;
    }

    //if (boot_status)
    //    wdat->wdd.bootstatus = WDIOF_CARDRESET;

    /* Clear the boot status in case BIOS did not do it */
    ret = wdat_wdt_run_action(ACPI_WDAT_SET_STATUS, 0, NULL);
    if (ret && ret != -EOPNOTSUPP)
        printks("Cameron : Failed to clear boot status\n");
}

static void wdat_wdt_set_running(void)
{
    u32 running = 0;
    int ret;

    ret = wdat_wdt_run_action(ACPI_WDAT_GET_RUNNING_STATE, 0,
                  &running);
    if (ret && ret != -EOPNOTSUPP)
        printks("Cameron : Failed to read running state\n");

    //if (running)
    //    set_bit(WDOG_HW_RUNNING, &wdat->wdd.status);
}

static int wdat_wdt_start(void)
{
    return wdat_wdt_run_action(
                   ACPI_WDAT_SET_RUNNING_STATE, 0, NULL);
}

static int wdat_wdt_stop(void)
{
    return wdat_wdt_run_action(
                   ACPI_WDAT_SET_STOPPED_STATE, 0, NULL);
}

static int wdat_wdt_ping(void)
{
    return wdat_wdt_run_action( ACPI_WDAT_RESET, 0, NULL);
}

static int wdat_wdt_set_timeout(unsigned int timeout)
{
    unsigned int periods;
    int ret;

    periods = timeout * 1000 / g_wdat.period;
    ret = wdat_wdt_run_action(ACPI_WDAT_SET_COUNTDOWN, periods, NULL);
    //if (!ret)
    //    wdd->timeout = timeout;
    return ret;
}

static unsigned int wdat_wdt_get_timeleft(void)
{
    u32 periods = 0;

    wdat_wdt_run_action(ACPI_WDAT_GET_CURRENT_COUNTDOWN, 0, &periods);
    return periods * g_wdat.period / 1000;
}

int rest_of_probe_Fancy(struct device_d *const pdev);
int rest_of_probe_Raw(struct device_d *const pdev);

static int wdat_wdt_probe_GREATLY_SIMPLIFIED(struct device_d *const pdev)
{
    /* ====== Welcome Banner Start ====== */
    static unsigned counter = 0;
    static char welcome_str[] = "Cameron : Enter function Probe (N=X)\n";
    welcome_str[33] = '0' + counter++;
    printks(welcome_str);
    /* ====== Welcome Banner End ======== */

    Populate_Wdat_Table();

    Populate_Instruction_List();

    request_ioport_region(dev_name(pdev), 0x460, 0x470);

    //return rest_of_probe_Fancy(pdev);
    return rest_of_probe_Raw(pdev);
}

int rest_of_probe_Fancy(struct device_d *const pdev)
{
#if 0
    printks("Cameron : Start Quarantine =========================== \n");
    for (unsigned i = 0; i != 10; ++i)
    {
        long long unsigned const base = 0x10460;

        printks("Cameron : Cameron_write32(0x4, base + 0);\n");
/* W */    Cameron_write32(0x4, base + 0u);  // This is a reset/kick

        printks("Cameron : Cameron_write32(0x0, base + 4);\n");
/* W */    Cameron_write32(0x0, base + 4u);
    }
    struct wdat_instruction *const instr =
list_first_entry(g_instructions[ACPI_WDAT_RESET], struct
wdat_instruction, node);
    wdat_wdt_write(instr,0x4);
    printks("Cameron : End Quarantine =========================== \n");
#endif

    //printks("Cameron : Action : Boot Status\n");
    //wdat_wdt_boot_status();

    //printks("Cameron : Action : Stop\n");
    //wdat_wdt_stop();

    //uint32_t const retval = Cameron_read32(0x10470);
    //printks("Cameron : Reading from 0x10470, value=%u\n", retval);

    printks("Cameron : Action : Set Timeout\n");
    wdat_wdt_set_timeout(10u);

// /* W */    Cameron_write32_rargs(0x10460 + 10u, 0x25000);
// printks("Cameron : Cameron_write32_rargs(base + 10, 0x25000);\n");

    printks("Cameron : Action : Ping\n");
    wdat_wdt_ping();

    printks("Cameron : Action : Set Running\n");
    wdat_wdt_set_running();

    printks("Cameron : Action : Start\n");
    wdat_wdt_start();

    return 0;
}

int rest_of_probe_Raw(struct device_d *const pdev)
{
    uint64_t const base = 0x10460;  // For x86, just add 0x10000 to 0x460

    uint32_t retval;

#if 1
/* These are extra resets that I added at the beginning */

    for (unsigned i = 0; i != 10; ++i)
    {
/* W */    Cameron_write32_rargs(base + 0u, 0x4);  // This is a reset/kick
        printks("Cameron : Cameron_write32_rargs(base +  0, 0x4);\n");

/* W */    Cameron_write32_rargs(base + 4u, 0x0);
        printks("Cameron : Cameron_write32_rargs(base +  4, 0x0);\n");
    }
#endif

/* Next 1 instruction is 0x20 (32) - Get Status */

/* R */    retval = Cameron_read32(base +  4u);  // This should be 0x0
    printks("Cameron : Cameron_read32(base +  4u) == 0x%08llx (should
be 0x0)\n", (long long unsigned)retval);

/* Next 2 instructions is 0x21 (33) - Set Status */

/* R */    retval = Cameron_read32(base +  4u);  // This should be 0x0
    printks("Cameron : Cameron_read32(base +  4u) == 0x%08llx (should
be 0x0)\n", (long long unsigned)retval);

/* W */    Cameron_write32_rargs(base + 4u, 0x20000);
    printks("Cameron : Cameron_write32_rargs(base +  4, 0x20000);\n");

/* Next 1 instruction is 0x08 (8) - Get Running State */

/* R */    retval = Cameron_read32(base +  8u);  // This should be 0x1800
    printks("Cameron : Cameron_read32(base +  8u) == 0x%08llx (should
be 0x1800)\n", (long long unsigned)retval);

/* Next 2 instructions is 0x09 (9) - Set Running State */

/* R */    retval = Cameron_read32(base +  8u);  // This should be 0x1800
    printks("Cameron : Cameron_read32(base +  8u) == 0x%08llx (should
be 0x1800)\n", (long long unsigned)retval);

/* W */    Cameron_write32_rargs(base + 8u, 0x1000);
    printks("Cameron : Cameron_write32_rargs(base +  8, 0x1000);\n");

/* Next 1 instruction is 0x01 (1) - Reset */

/* R */    retval = Cameron_read32(base +  0u);  // This should be 0x4
    printks("Cameron : Cameron_read32(base +  0u) == 0x%08llx (should
be 0x4)\n", (long long unsigned)retval);

/* W */    Cameron_write32_rargs(base + 0u,0x4);
    printks("Cameron : Cameron_write32_rargs(base +  0, 0x4);\n");

    return rest_of_probe_Fancy(pdev);

/* Next 2 instructions is 0x06 (6) - Set Countdown */

/* R */    retval = Cameron_read32(base + 10u);  // This should be 0x40000
    printks("Cameron : Cameron_read32(base + 10u) == 0x%08llx (should
be 0x40000)\n", (long long unsigned)retval);

/* W */    Cameron_write32_rargs(base + 10u, 0x640000);
    printks("Cameron : Cameron_write32_rargs(base + 10, 0x640000);\n");

/* Next 2 instructions is 0x01 (1) - Reset */

/* R */    retval = Cameron_read32(base +  0u);  // This should be 0x2
    printks("Cameron : Cameron_read32(base +  0u) == 0x%08llx (should
be 0x2)\n", (long long unsigned)retval);

/* W */    Cameron_write32_rargs(base + 0u,0x4);  // This is a reset/kick
    printks("Cameron : Cameron_write32_rargs(base +  0, 0x4);\n");

/* Next 2 instructions is 0x01 (1) - Reset */

    for (unsigned monkey = 0; monkey != 4; ++monkey)
    {
/* R */        retval = Cameron_read32(base +  0u);  // This should be 0x34
        printks("Cameron : Cameron_read32(base +  0u) == 0x%08llx
(should be 0x34)\n", (long long unsigned)retval);

/* W */        Cameron_write32_rargs(base + 0u,0x4);  // This is a reset/kick
        printks("Cameron : Cameron_write32_rargs(base +  0u, 0x4);\n");
    }

/* Next 2 instructions is the repeated kick (ad infinitum) */

    for (unsigned monkey = 0; monkey != 4; ++monkey)
    {
        mdelay(3000llu);

/* R */        retval = Cameron_read32(base +  0u);  // This should be 0x32
        printks("Cameron : Cameron_read32(base +  0u) == 0x%08llx
(should be 0x32)\n", (long long unsigned)retval);

/* W */        Cameron_write32_rargs(base + 0u,0x4);  // This is a kick
        printks("Cameron : Cameron_write32_rargs(base +  0u,
0x4);\n");
    }

    return rest_of_probe_Fancy(pdev);
}

static void Cameron_Remove(struct device_d *const pdev)
{
    printks("Cameron : Custom ACPI watchdog driver removed\n");
}

static struct acpi_driver cameron_itco_watchdog_acpi_driver = {
    .signature = "WDAT",
    .driver = {
        .name = "cameron_itco_watchdog_acpi_driver",
        .probe = wdat_wdt_probe_GREATLY_SIMPLIFIED,
        .remove = Cameron_Remove,
    }
};

device_acpi_driver(cameron_itco_watchdog_acpi_driver);

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
