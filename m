Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x242.google.com ([2607:f8b0:4002:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCFAD-0000n5-Ni
 for barebox@lists.infradead.org; Sun, 12 Jun 2016 23:51:34 +0000
Received: by mail-yw0-x242.google.com with SMTP id y6so14539871ywe.0
 for <barebox@lists.infradead.org>; Sun, 12 Jun 2016 16:51:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1465330201.15779.165.camel@rtred1test09.kymeta.local>
References: <1465329688.15779.156.camel@rtred1test09.kymeta.local>
 <1465330201.15779.165.camel@rtred1test09.kymeta.local>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 12 Jun 2016 16:51:12 -0700
Message-ID: <CAHQ1cqEFauumXedKG_V6CkQ=REYMNUrYmqBXQuFwwmt4FLRZ8Q@mail.gmail.com>
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
Subject: Re: [PATCH 5/5] rtc: ds1307: Limit clock starting retries
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Tue, Jun 7, 2016 at 1:09 PM, Trent Piepho <tpiepho@kymetacorp.com> wrote:
> If the driver detects the clock is stopped, via clock halted control
> bit or oscillator stopped status flag, it will try to start the clock
> and then reread the control registers and retry the probe process.
>
> It will continue to retry until the clock starts, possibly forever if
> the clock crystal is not installed.  While the driver's dogged
> determination to start the clock is admirable, at some point you have
> to say enough is enough, this clock won't go, and get one with more
Typo?  -----------------------------------------------------------------^

> important things, like booting.
>
> This limits the number of tries to start the clock to three.

This is definitely a good change. Might I suggest a slightly different
implementation? Something to the effect of:

------------------------8<----------------------------------------------------

for (retries = 0; retries < 3; retries++) {
    clock_halted = oscillator_failed = false;

    /* read RTC registers */
    tmp = ds1307_read_block_data(client, 0, nreg, buf);
    if (tmp != nreg) {
        dev_dbg(&client->dev, "read error %d\n", tmp);
        err = -EIO;
        goto exit;
    }

    /* clock halted?  turn it on, so clock can tick. */
    if (ds1307->has_alarms) {
         if (buf[DS1337_REG_CONTROL] & DS1337_BIT_nEOSC) {
              buf[DS1337_REG_CONTROL] &= ~DS1337_BIT_nEOSC;
              i2c_smbus_write_byte_data(client,
                                                            DS1337_REG_CONTROL,

buf[DS1337_REG_CONTROL]);
              clock_halted = true;
        }
    } else {
        if (buf[DS1307_REG_SECS] & DS1307_BIT_CH) {
            buf[DS1307_REG_SECS] = 0;
            i2c_smbus_write_byte_data(client,
                                                          DS1307_REG_SECS,
                                                          buf[DS1307_REG_SECS]);
            clock_halted = true;
        }
    }

    if (clock_halted) {
          dev_warn(&client->dev,
                           "chip's oscillator is disabled. "
                           "Re-enabling it.\n");
          continue;
    }


     /* Oscillator fault?  clear flag and print warning */
     switch (ds1307->osf) {
     case OSF_1338:
         if (buf[DS1307_REG_CONTROL] & DS1338_BIT_OSF) {
             buf[DS1307_REG_CONTROL] &= ~DS1338_BIT_OSF;
             i2c_smbus_write_byte_data(client,
                                                           DS1307_REG_CONTROL,

buf[DS1307_REG_CONTROL]);
             oscillator_failed = true;
         }
         break;
     case OSF_1337:
         if (buf[DS1337_REG_STATUS] & DS1337_BIT_OSF) {
             buf[DS1337_REG_STATUS] &= ~DS1337_BIT_OSF;
             i2c_smbus_write_byte_data(client,
                                                           DS1337_REG_STATUS,

buf[DS1337_REG_STATUS]);
              oscillator_failed = true;
         }
         break;
     default: ;
     }

     if (oscillator_failed) {
          dev_warn(&client->dev,
                           "chip's oscillator failed. "
                           "Clearing and re-reading status.\n");
          continue;
     }

     break;
};

if (oscillator_failed || clock_halted) {
    dev_warn(&client->dev,
                     "RTC's time information is incorrect. "
                     "Please set time\n")
}

if (!retries)
    dev_err(&client->dev,
                 "Failed to start clock, placing in correct once per
day mode!\n");


------------------------>8----------------------------------------------------

Note, however that this would restore original error handling behavior
-- which you changed in 3/5 -- where all registers are re-read after
each type of failure is detected.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
