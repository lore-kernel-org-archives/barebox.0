Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QQxt7-0006PL-VM
	for barebox@lists.infradead.org; Mon, 30 May 2011 08:31:50 +0000
Received: by wyb28 with SMTP id 28so3249306wyb.36
	for <barebox@lists.infradead.org>; Mon, 30 May 2011 01:31:46 -0700 (PDT)
Message-ID: <4DE355F0.1020502@gmail.com>
Date: Mon, 30 May 2011 10:31:44 +0200
From: Carlo Caione <carlo.caione@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: guruplug/dreamplug porting
To: barebox@lists.infradead.org

Hi,
I was wondering how feasible it is to port barebox on guruplug/dreamplug 
marvell-based boards.
The most noticeable problem for me is the initialization part in asm 
(I'm not an asm junkie). Is it possible to reuse the arm code (asm) in 
the current version of barebox or at least to take it from u-boot 
sources (according to uboot conf files, uboot uses the arm926ejs as CPU 
for the guruplug)?

Regards,

--
Carlo Caione

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
