Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpbg504.qq.com ([203.205.250.60] helo=smtpbg.qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhuF-0005L2-Cp
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 13:41:13 +0000
Received: from FREEZE (unknown [59.35.37.114])
 by esmtp4.qq.com (ESMTP) with SMTP id 0
 for <barebox@lists.infradead.org>; Mon, 19 Aug 2019 21:40:47 +0800 (CST)
From: "duhuanpeng" <iu87m888m@qq.com>
Date: Mon, 19 Aug 2019 21:40:49 +0800
Message-ID: <001201d55693$b674d930$235e8b90$@qq.com>+4B46A5A4ED5E38A5
MIME-Version: 1.0
Content-Language: en-us
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
Subject: mips : How to run barebox by bootm in ram(u-boot command)?
To: barebox@lists.infradead.org

Hello! How to run Barebox from ram now?

I have a board with 64MiB ram and 16MiB flash, flash it to the first sector
by
original u-boot, maybe brick the board. Debrick is difficult due to limited
tools.

So, I want to run this in ram. And my u-boot *don't* have the "go" command.
I have to use bootm command to run Barebox.

- - - - - -
mkimage -A mips -O linux -T kernel -C none -a 80060000 -e 80060000 -n
'barebox-tp-link' -d barebox.bin uImage
tftpboot 0x81000000 uImage
bootm 0x81000000
- - - -
I have try these above, but no luck.

Regards,
duhuanpeng



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
