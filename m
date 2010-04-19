Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1O3moy-0005Ct-QA
	for barebox@lists.infradead.org; Mon, 19 Apr 2010 08:59:13 +0000
Received: by wwb28 with SMTP id 28so1613810wwb.36
	for <barebox@lists.infradead.org>; Mon, 19 Apr 2010 01:59:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20100416075656.GX7882@pengutronix.de>
References: <alpine.LRH.2.00.1004141327120.2049@localhost.localdomain>
	<20100416075656.GX7882@pengutronix.de>
Date: Mon, 19 Apr 2010 10:59:08 +0200
Message-ID: <i2yba216b431004190159h873158a1qacee1d4686455e1a@mail.gmail.com>
From: Ivo Clarysse <ivo.clarysse@gmail.com>
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
Subject: Re: [PATCH] MX25PDK: Add support for 64MiB DDR2 SDRAM
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Apr 16, 2010 at 9:56 AM, Sascha Hauer <s.hauer@pengutronix.de> wrot=
e:
[...]
> Does Kconfig support something like
>
> =A0 =A0 =A0 =A0default 0x83f00000 if MACH_FREESCALE_MX25_3STACK && FREESC=
ALE_MX25_3STACK_SDRAM_64MB_DDR2
> =A0 =A0 =A0 =A0default 0x87f00000 if MACH_FREESCALE_MX25_3STACK && FREESC=
ALE_MX25_3STACK_SDRAM_128MB_MDDR
>
> ?

Yes, that does seem to work.

Do you want me to submit a new patch ?


Ivo.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
