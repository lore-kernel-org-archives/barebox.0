Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QjXMl-0004aA-KG
	for barebox@lists.infradead.org; Wed, 20 Jul 2011 14:03:16 +0000
Received: by wwf22 with SMTP id 22so198732wwf.18
	for <barebox@lists.infradead.org>; Wed, 20 Jul 2011 07:03:08 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110720041118.GD15388@game.jcrosoft.org>
References: <1311111546-888-1-git-send-email-antonynpavlov@gmail.com>
	<1311111546-888-13-git-send-email-antonynpavlov@gmail.com>
	<20110720041118.GD15388@game.jcrosoft.org>
Date: Wed, 20 Jul 2011 18:03:07 +0400
Message-ID: <CAA4bVAGmqKrnFMcLqPGVDsmKT2xJ5ka1puvQVtdBuBLSO_BoXg@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v7 13/15] MIPS: add initial D-Link DIR-320 wireless router
	support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 20 July 2011 08:11, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
>> diff --git a/arch/mips/boards/dlink-dir-320/serial.c b/arch/mips/boards/=
dlink-dir-320/serial.c
>> new file mode 100644
>> index 0000000..6e878cd
>> --- /dev/null
>> +++ b/arch/mips/boards/dlink-dir-320/serial.c
...

>> +/** to work with the 8250 UART driver implementation we need this funct=
ion */
>> +static unsigned int dir320_uart_read(unsigned long base, unsigned char =
reg_idx)
>> +{
>> + =A0 =A0 return __raw_readb((char *)base + reg_idx);
>> +}
>> +
>> +/** to work with the 8250 UART driver implementation we need this funct=
ion */
>> +static void dir320_uart_write(unsigned int val, unsigned long base, uns=
igned char reg_idx)
>> +{
>> + =A0 =A0 __raw_writeb(val, (char *)base + reg_idx);
>> +}
> can we drop those duplicated function with malta and other

I think, that it is much better to improve ns16550 driver.

e.g.
   reg_write(val, base, reg_idx) -> reg_write(struct device_d *dev,
val, reg_idx)

there

struct device_d {
   ...
   .map_base =3D ... ; /* FIXME: use resource */

}

struct NS16550_plat {
   ...
   unsigned int (*reg_read)(struct device_d *dev, reg_idx);
   void (*reg_write)(struct device_d *dev, val, reg_idx);
   ...
   unsigned int regshift;
   unsigned int offset;
   ...
};

generic_ns16550_write works like this:

generic_ns16550_write(struct device_d *dev, val, reg_idx)
{
  struct NS16550_plat * plat =3D dev->platform_data;

  writeb(val, dev->map_base + (reg_idx << plat->regshift) + plat->offset);
}

so platform-depended initialization set plat->base, plat->regshift and
plat->offset;
also most times it set plat->reg_write=3Dgeneric_ns16550_write and
plat->reg_read=3Dgeneric_ns16550_read.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
