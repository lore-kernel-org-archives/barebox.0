Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RqgKw-00063s-99
 for barebox@lists.infradead.org; Fri, 27 Jan 2012 07:35:07 +0000
Received: by bke5 with SMTP id 5so1834617bke.36
 for <barebox@lists.infradead.org>; Thu, 26 Jan 2012 23:35:02 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 27 Jan 2012 08:35:02 +0100
Message-ID: <CAAfyv35AujbBzsbYfEXx7fXm7NmdEg922Fc+Y3kSNqj4QtcJUw@mail.gmail.com>
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
Subject: Pandaboard kernel 3.2.1 loaded from barebox
To: barebox@lists.infradead.org

Hi,

I'm trying execute (stable 3.2.1 kernel) zImage for pandaboard but
after command bootz boot/zImage it just stuck:
barebox@Texas Instrument's Panda:/ bootz boot/zImage
loaded zImage from boot/zImage with size 3314936
commandline: console=ttyO2,115200
arch_number: 2791
Uncompressing Linux... done, booting the kernel.

Same with loadm uImage.
I have DEBUG_LL enabled in kernel but no message so far after that.

Maybe this is not barebox bug just want to be sure ;).
It's different platform but it's not related?
http://lists.infradead.org/pipermail/barebox/2012-January/005923.html

version: barebox 2012.01.

Thanks in advance,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
