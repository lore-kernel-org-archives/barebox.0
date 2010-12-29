Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qy0-f170.google.com ([209.85.216.170])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PXtRT-0004c9-N2
	for barebox@lists.infradead.org; Wed, 29 Dec 2010 10:39:44 +0000
Received: by qyk10 with SMTP id 10so12627010qyk.15
	for <barebox@lists.infradead.org>; Wed, 29 Dec 2010 02:39:36 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 29 Dec 2010 11:39:35 +0100
Message-ID: <AANLkTikS9O0_kNedeaCMRLvn9eH=kCK5ThJkFAAZ6JOs@mail.gmail.com>
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
Subject: x86 compilation broken in next branch
To: barebox@lists.infradead.org

Try to play around barebox on x86 will get following error:
ld: barebox section `.initcall.8' will not fit in region `mbr'
ld: section .initcall.8 loaded at [0000000000000400,0000000000000407]
overlaps section .bootstrapping loaded at
[0000000000000400,0000000000000867]
ld: region `mbr' overflowed by 8 bytes
make: *** [barebox] Error 1

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
