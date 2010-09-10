Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OtzUC-0007Jy-22
	for barebox@lists.infradead.org; Fri, 10 Sep 2010 09:01:33 +0000
Received: by vws11 with SMTP id 11so2502374vws.36
	for <barebox@lists.infradead.org>; Fri, 10 Sep 2010 02:01:30 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 10 Sep 2010 11:01:30 +0200
Message-ID: <AANLkTi=M-LyNQqYmBmrMivx-Ymfw3PQJvXvZFLjJ_rz6@mail.gmail.com>
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
Subject: storing barebox to flash /dev/nand0
To: barebox@lists.infradead.org

Hi,

I'm porting barebox to mini2440 board. I can boot barebox from SDRAM
by loading to TEXT_BASE address.
I would like to test also booting from NAND flash but I can't find a
way how to store barebox loaded in RAM
to flash.

I try tftp barebox.bin /dev/nand0 but if failed with:

TFTP from server 10.146.1.21 ('barebox.bin' -> '/dev/nand0')
        offset 0x00000200 not page aligned
write: Invalid argument

tftp failed: error -22

How can I properly store to flash?

Thank's in advance,

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
