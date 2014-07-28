Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBliX-0001gC-MR
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 14:15:58 +0000
Received: by mail-la0-f47.google.com with SMTP id mc6so5432275lab.20
 for <barebox@lists.infradead.org>; Mon, 28 Jul 2014 07:15:29 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by mx.google.com with ESMTPSA id t7sm12422658lat.16.2014.07.28.07.15.27
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 28 Jul 2014 07:15:28 -0700 (PDT)
Date: Mon, 28 Jul 2014 18:28:14 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140728182814.d80c510749ed1851aaddafb8@gmail.com>
Mime-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: NOR flash writing
To: barebox@lists.infradead.org

Hi All!

I have barebox running on a board with SPI flash chip.
I can write to the SPI flash chip using /dev/nor0 interface.
Before writing data to the /dev/nor0 device I have to erase it explicitly w=
ith 'erase /dev/nor0' command.

How I can write to /dev/nor0 in a more transparent way. E.g. if I want to u=
pdate only several bytes
on /dev/nor0 then I use 'mw -d /dev/nor0 ...' command and barebox  automati=
cally reads appropriate
flash sector into RAM, modify it, erase NOR flash device sector and write n=
ew sector content into NOR flash device.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
