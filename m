Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from easyspace2.ezspl.net ([66.45.254.2])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCsgf-0002pD-1W
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 11:36:29 +0000
Received: from mail-yx0-f177.google.com ([209.85.213.177]:42628)
	by easyspace2.ezspl.net with esmtpsa (TLSv1:RC4-MD5:128) (Exim 4.69)
	(envelope-from <kallol@nucleodyne.com>) id 1PCsgh-0007fJ-0u
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 07:36:31 -0400
Received: by yxi11 with SMTP id 11so3347158yxi.36
	for <barebox@lists.infradead.org>; Mon, 01 Nov 2010 04:36:24 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 1 Nov 2010 04:36:24 -0700
Message-ID: <AANLkTi=OBTyCqTLhLjzp04714cVzF+GEm0pALiu50Z8S@mail.gmail.com>
From: Kallol Biswas <kallol@nucleodyne.com>
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
Subject: BIOS like screen for uboot
To: barebox@lists.infradead.org

Hi,
     We have a customer request that we need to create a BIOS like
screens for uboot.

For this we have cross compiled curses library under uboot but have
been getting error in
linking phase we have expected.

The major effort is to get termcap database into uboot.

We have looked at the barebox port of uboot and it seems to have some
menu support.
How good is the menu support? Can it handle different terminal types?

Is there any curses like support available in uboot? A few screen
shots of the barebox UI would be helpful.

Kallol

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
