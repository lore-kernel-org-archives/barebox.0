Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RU3XY-0008Cc-Uq
 for barebox@lists.infradead.org; Fri, 25 Nov 2011 21:42:38 +0000
Received: by vbbfs19 with SMTP id fs19so3861737vbb.36
 for <barebox@lists.infradead.org>; Fri, 25 Nov 2011 13:42:35 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 25 Nov 2011 22:42:33 +0100
Message-ID: <CAAfyv345QDLnUt4n7vTyBqmt-y5E9mOLuOgrb0VYBBENofwA=w@mail.gmail.com>
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
Subject: next branch compilation errors
To: barebox@lists.infradead.org

Hi,

today I update next branch and run MAKEALL for arm gives result that
most of board aren't compilable because of:

barebox/common/memory.c:66:14: warning: 'sbrk' defined but not used
common/built-in.o: In function `memalign':
memsize.c:(.text.memalign+0xc): undefined reference to `sbrk'
make[1]: *** [barebox] Error 1
make: *** [_all] Error 2

or:

barebox/common/memory.c:66:14: warning: 'sbrk' defined but not used
common/built-in.o: In function `malloc':
memsize.c:(.text.malloc+0x3e4): undefined reference to `sbrk'
memsize.c:(.text.malloc+0x474): undefined reference to `sbrk'
make[1]: *** [barebox] Error 1
make: *** [_all] Error 2

Not sure if I'm doing something wrong or miss something?

Thanks,

Marek

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
