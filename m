Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l3x6g-0000c3-EG
 for barebox@lists.infradead.org; Mon, 25 Jan 2021 08:20:19 +0000
Received: by mail-ed1-x52a.google.com with SMTP id g1so14143249edu.4
 for <barebox@lists.infradead.org>; Mon, 25 Jan 2021 00:20:16 -0800 (PST)
MIME-Version: 1.0
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 25 Jan 2021 11:20:04 +0300
Message-ID: <CAP1tNvT79QvYYTL9O+V+HR=XVTKHS=UxJtc1ZvNaMu1yQZns9w@mail.gmail.com>
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
Subject: AM335x NAND write hungs
To: barebox@lists.infradead.org

Hello.

I recently upgraded my barebox from 2020.11 to 2021.01 for a custom board
based on TI AM335x processor.
The update revealed the inoperability of writing to NAND. When trying to write,
the bootloader hangs forever.
Reverting the commit "mtd: nand: omap_gpmc: Fix wrong length check" helps
to solve the problem.
Does anyone have similar problems?

Thanks!

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
