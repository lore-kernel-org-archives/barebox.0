Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OxJ9k-0003zZ-7K
	for barebox@lists.infradead.org; Sun, 19 Sep 2010 12:38:08 +0000
Received: by fxm4 with SMTP id 4so347313fxm.36
	for <barebox@lists.infradead.org>; Sun, 19 Sep 2010 05:38:06 -0700 (PDT)
MIME-Version: 1.0
From: Anand Gadiyar <gadiyar@gmail.com>
Date: Sun, 19 Sep 2010 18:07:46 +0530
Message-ID: <AANLkTi=pbGJYGCsbqOxtgrkRwJW8up2FKnHzHsgjg-bV@mail.gmail.com>
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
Subject: Using barebox to replace u-boot on OMAPs
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

Hi all,

I'm new to barebox and trying to play with it on a beagleboard.
So please bear with my newbie questions - I have tried to
search for documentation on this, but I wasn't successful.

I have been able to use barebox with the sandbox config
and figured out how to build a cramfs filesystem and modify
the default environment.

What I'm trying to do now is to see if barebox can be used
to replace u-boot on beagleboard, to load uImage directly.

Specifically, I would like to know if it given barebox.bin and
uImage are present at particular RAM locations, how to get
barebox to locate the uImage in RAM?

Thanks in advance for any pointers.

- Anand

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
