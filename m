Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qw0-f49.google.com ([209.85.216.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PHzvM-0005Q5-Vd
	for barebox@lists.infradead.org; Mon, 15 Nov 2010 14:20:53 +0000
Received: by qwg5 with SMTP id 5so560809qwg.36
	for <barebox@lists.infradead.org>; Mon, 15 Nov 2010 06:20:47 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 15 Nov 2010 15:20:47 +0100
Message-ID: <AANLkTinH6kLH99A0DgUCp3AFnrLsmcACMeTgW1s1PNKt@mail.gmail.com>
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
Subject: sparse warnings
To: barebox@lists.infradead.org

Hi,

barebox compilation with C=1 produce a lot of sparse warnings.
Mainly concerning __iomem problems with readb() and similar functions.

Make it sense to take care or just could be omitted?

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
