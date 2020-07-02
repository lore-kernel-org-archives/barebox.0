Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqxVD-0004tD-Cc
 for barebox@lists.infradead.org; Thu, 02 Jul 2020 11:35:40 +0000
Received: by mail-lf1-x12a.google.com with SMTP id c11so15859608lfh.8
 for <barebox@lists.infradead.org>; Thu, 02 Jul 2020 04:35:37 -0700 (PDT)
Date: Thu, 2 Jul 2020 14:35:24 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20200702113523.GA5528@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: sandbox: barebox executable for x86_64 is nonfunctional
To: a.fatoum@pengutronix.de
Cc: barebox@lists.infradead.org

Hello, Ahmad,

After 54d47eb7e "sandbox: support forcing 32-bit x86" the sandbox barebox 
executable produced on x86_64 host is nonfunctional, i.e. it exits right after 
start. Reverting the mentioned commit does fix the problem.  The host is 
running a bit outdated Debian bullseye/sid, gcc version is "gcc (Debian 9.2.1-19) 9.2.1 
20191109". Here are the commands I've used to build and run barebox:

	$ export ARCH=sandbox
	$ make mrproper && make sandbox_defconfig && make -j4 -s
	$ ./barebox
	$ echo $?
	1

Regards,
Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
