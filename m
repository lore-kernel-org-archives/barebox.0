Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gg0-f169.google.com ([209.85.161.169])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TtqJK-0006ED-Rv
 for barebox@lists.infradead.org; Sat, 12 Jan 2013 01:55:03 +0000
Received: by mail-gg0-f169.google.com with SMTP id u4so446882ggl.0
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2013 17:55:00 -0800 (PST)
From: niqingliang2003@gmail.com
Date: Sat, 12 Jan 2013 09:53:01 +0000
Message-ID: <5908839.6Wy9GUm0p4@yiqingliang-pc>
MIME-Version: 1.0
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
Subject: s3c2440's register: MRSR6
To: barebox <barebox@lists.infradead.org>

Hello, I compiled barebox (based on mini2440).
and start from nand, can't start normally,
after changed MRSRB6 to 0x30, ok.

I have checked uboot, it does use 0x30 for mini2440.
but barebox use 0x20 (work on mini2440, but not work on my 2442 
board).

what does it depend on?
in other words, what does the CL value depend on?

'BOARD_SPECIFIC_MRSRB6'

Nanjing Jilong
Yi Qingliang


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
