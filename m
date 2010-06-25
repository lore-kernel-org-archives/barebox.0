Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OS5GK-00031A-9w
	for barebox@lists.infradead.org; Fri, 25 Jun 2010 09:31:53 +0000
Received: by wyb32 with SMTP id 32so757326wyb.36
	for <barebox@lists.infradead.org>; Fri, 25 Jun 2010 02:31:49 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 25 Jun 2010 11:31:49 +0200
Message-ID: <AANLkTimjBoeR8qBpdmbcuRgxr6o7xNRKaYQ6OdyDi_Fu@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: testing barebox on calao sbc35-a9260 board
To: barebox@lists.infradead.org

Hi,

I have a calao board sbc35-a9260 with u-boot pre-installed on it.
I would like to try barebox running on that board (also make some development).
I build at91sam9260ek_defconfig to try it out. I became to situation
that I don't know how to load image to board :)

I try via tftp but u-boot automatically try to boot it and I got some
error about magic number.
I think about possibility just download binary to some RAM address and
then use go command in u-boot
to test if barebox binary will work.

There exist some how-to or example how to do this?

Thanks in advance,

Marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
icq: 290551086
web: http://open-nandra.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
