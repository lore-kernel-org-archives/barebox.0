Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OZkyU-0000xx-5E
	for barebox@lists.infradead.org; Fri, 16 Jul 2010 13:29:10 +0000
Received: by vws8 with SMTP id 8so2853619vws.36
	for <barebox@lists.infradead.org>; Fri, 16 Jul 2010 06:29:09 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 16 Jul 2010 18:59:09 +0530
Message-ID: <AANLkTik2E-amNP6qE1RSImyOuPBzH_o6Sbg_WPGc9SLt@mail.gmail.com>
From: Gaurav Singh <gausinghnsit@gmail.com>
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
Subject: Amba PL011 driver support
To: barebox@lists.infradead.org

Hi all,
Currently I am working to port Barebox on an ARM11v6 based board. I
have a PL011 UART peripheral on my board and want to use this UART as
my console. I read somewhere that the PL010 serial driver would
support PL011 as well but I was unable to use this driver to bring up
the console.
Looking =A0at the device specifications I noticed that some changes to
the PL010 driver would suffce for my requirement and making these
changes I was able to initialize the console and use my UART for
entering bb commands.

Is there a requirement for a seperate PL011 driver in barebox at the
moment ? I notice that both U-boot and the kernel have seperate
drivers for PL010 and PL011.

Thanks and Regards
Gaurav Singh

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
