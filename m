Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x230.google.com ([2607:f8b0:4001:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aAyVp-0003Nm-3A
 for barebox@lists.infradead.org; Mon, 21 Dec 2015 11:20:21 +0000
Received: by mail-ig0-x230.google.com with SMTP id ph11so35039247igc.1
 for <barebox@lists.infradead.org>; Mon, 21 Dec 2015 03:20:00 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1450206947.26955.174.camel@rtred1test09.kymeta.local>
References: <1450200490-4488-1-git-send-email-fvallee@eukrea.fr>
 <1450206947.26955.174.camel@rtred1test09.kymeta.local>
Date: Mon, 21 Dec 2015 12:19:59 +0100
Message-ID: <CADgCO28bA+FbpaTGij_0VE4wY+QiCOSKf-D3bSYECxcuL1QFvA@mail.gmail.com>
From: =?UTF-8?Q?Florian_Vall=C3=A9e?= <fvallee@eukrea.fr>
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
Subject: Re: [PATCH v2] GPIO: add Microchip MCP23017 / MCP23008 GPIO driver
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 15 December 2015 at 20:15, Trent Piepho <tpiepho@kymetacorp.com> wrote:
> On Tue, 2015-12-15 at 18:28 +0100, Florian Vallee wrote:
>> +
>> +/* A given spi_device can represent up to eight mcp23sxx chips
>> + * sharing the same chipselect but using different addresses
>> + * (e.g. chips #0 and #3 might be populated, but not #1 or $2).
>> + * Driver data holds all the per-chip data.
>> + */
>> +struct mcp23s08_driver_data {
>> +     unsigned                ngpio;
>> +     struct mcp23s08         *mcp[8];
>> +     struct mcp23s08         chip[];
>> +};
>
> It doesn't look like anything uses this struct.
>
>> +static int
>> +mcp23008_read_regs(struct mcp23s08 *mcp, unsigned reg, u16 *vals, unsigned n)
>> +{
>> +     while (n--) {
>> +             int ret = mcp23008_read(mcp, reg++);
>
> This could use mcp->ops->read(mcp, reg++) instead of mcp23008_read().
> Which would make it exactly the same as this function:
>
>> +static int
>> +mcp23017_read_regs(struct mcp23s08 *mcp, unsigned reg, u16 *vals, unsigned n)
>> +{
>> +     while (n--) {
>> +             int ret = mcp23017_read(mcp, reg++);
>> +             if (ret < 0)
>> +                     return ret;
>> +             *vals++ = ret;
>> +     }
>> +
>> +     return 0;
>> +}
>
> So just one read_regs fuction is needed.  Which also would allow
> read_regs to be removed from the ops struct since it's the same for both
> chips.
>

Should we go as far as removing the read_regs ops ? Doing so will
specialize "mcp23s08_probe_one" for the i2c version of the chip. If we
ever want to integrate back the SPI part of the linux driver, leaving
the op has a minimal cost while enabling us to keep mcp23s08_probe_one
in sync with the linux's version.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
