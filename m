Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VsD62-0006iZ-J2
 for barebox@lists.infradead.org; Sun, 15 Dec 2013 14:55:07 +0000
Received: by mail-la0-f42.google.com with SMTP id ec20so2302626lab.15
 for <barebox@lists.infradead.org>; Sun, 15 Dec 2013 06:54:41 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 15 Dec 2013 19:02:04 +0400
Message-Id: <1387119725-6803-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [JUST RFC] add hardware independent clock source
To: barebox@lists.infradead.org

Then porting barebox to a new SoC/board it is possible
a situation then clocksource is broken or not yet present.
In the broken/absent clocksource situation serial barebox
console can't work correctly. Working on barebox for a DIGIC
chip I have faced this situation. To overcome the problem
I introduced the software-only clocksource.

The sample of hardware independent clock source is
in the following patch:

[JUST RFC] ARM: DIGIC: add csrc-dummy

Please comment on this approach!
May be there is some ready receipt for broken clocksource case?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
