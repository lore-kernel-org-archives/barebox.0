Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vx0-f177.google.com ([209.85.220.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QFhn3-00074l-5h
	for barebox@lists.infradead.org; Fri, 29 Apr 2011 07:07:01 +0000
Received: by vxd2 with SMTP id 2so3191129vxd.36
	for <barebox@lists.infradead.org>; Fri, 29 Apr 2011 00:06:59 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 29 Apr 2011 09:06:58 +0200
Message-ID: <BANLkTimBTzBWeLg5qGg+riW2VYruF5W8Mg@mail.gmail.com>
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
Subject: MAKEALL problem
To: barebox@lists.infradead.org

Hi,

current HEAD: 165a1e91f9178f160bc34c00e1d5b356cf022a00 make this problem:

CROSS_COMPILE=arm-none-linux-gnueabi- ARCH=arm ./MAKEALL
Building arm a9m2410_defconfig
Configure: ./MAKEALL: 266: Bad substitution

--------------------- SUMMARY ----------------------------
defconfigs compiled: 0
compiled in   10s
----------------------------------------------------------

Am I missing something or it's really broken?

thanks,

marek

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
