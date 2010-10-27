Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PB5KX-0000ZN-Mf
	for barebox@lists.infradead.org; Wed, 27 Oct 2010 12:42:17 +0000
Received: by ywg4 with SMTP id 4so341522ywg.36
	for <barebox@lists.infradead.org>; Wed, 27 Oct 2010 05:42:03 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 27 Oct 2010 14:42:03 +0200
Message-ID: <AANLkTimj3WiRQaeP+tQ7-AHy3WcVG0MKpwt5uNfo_cWf@mail.gmail.com>
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
Subject: command bootu to start kernel
To: barebox@lists.infradead.org

Hi,

I have mini2440 board with barebox running from RAM.
I try to start uImage kernel for that platform but I'm little bit
confused how to do it.

I do tftp uImage and the bootu uImage but it always hangs :

commandline: console=ttySAC0,115200
arch_number: 1999

I track down that theKernel pointer point to 0xffffffff (memmap return
(void*)-1) which is obviously wrong.
If I understand correctly bootu function take first parameter and try to
open a file and memmap. If file isn't opened successfully then convert
string address which is then taken for
theKernel pointer.

Is this correct procedure or do I something wrong?

Thanks for replies,

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
