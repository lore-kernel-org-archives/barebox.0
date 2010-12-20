Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qw0-f49.google.com ([209.85.216.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PUdGi-0000s8-BJ
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 10:47:11 +0000
Received: by qwj9 with SMTP id 9so2734374qwj.36
	for <barebox@lists.infradead.org>; Mon, 20 Dec 2010 02:46:44 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 20 Dec 2010 11:46:44 +0100
Message-ID: <AANLkTimRU=-AufgJ0qXBfSSgWiHfaBbnL_e9jdTLVo22@mail.gmail.com>
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
Subject: nand_boot_test problem
To: barebox@lists.infradead.org

Hi,

I'm trying to add support for mini2440 to boot from NAND flash.
I overtake boot code from u-boot and re-use a9m2410 lowlevel_init.S.

I could load barebox.bin to NAND flash anyway when try to test command
nand_boot_test 0x31fc0000 262144 512 I get no error just board is reseted.


Any ideas?

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
