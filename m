Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gh0-f177.google.com ([209.85.160.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj3yt-0007UW-JI
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 07:45:08 +0000
Received: by ghbf11 with SMTP id f11so2795459ghb.36
 for <barebox@lists.infradead.org>; Mon, 25 Jun 2012 00:45:06 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 25 Jun 2012 11:45:06 +0400
Message-ID: <CAA4bVAHvo6i3uOoEao=q8RCP+i3NZ+9XnmvA=mKjEYZztrmB2g@mail.gmail.com>
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
Subject: SPI chip select problem
To: barebox <barebox@lists.infradead.org>

Hi!

I have added spi controller driver for one of my MIPS boards and
found, that there is a problem with chip select.

During initialisation we call *_spi_setup() method. It switch chip
select and frequency for every probing spi slave chip.
But after initialisation __we never__ call this method. So if I have
more than 1 spi slave chip, I can use only last of them.

There is the 'cs_change' flag for *_spi_transfer() method, but this
flag does not used at all!

I have made quick-and-dirty patch:

--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -196,6 +196,8 @@ EXPORT_SYMBOL(spi_register_master);

 int spi_sync(struct spi_device *spi, struct spi_message *message)
 {
+       spi->master->setup(spi);
+
        return spi->master->transfer(spi, message);
 }

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
