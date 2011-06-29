Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QblJW-0001yB-2o
	for barebox@lists.infradead.org; Wed, 29 Jun 2011 03:19:43 +0000
Received: by wyf23 with SMTP id 23so703203wyf.36
	for <barebox@lists.infradead.org>; Tue, 28 Jun 2011 20:19:32 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 29 Jun 2011 07:19:32 +0400
Message-ID: <BANLkTim4Zii2mrHBXjk-4CQo2Fy9uiOqVg@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: add mips support: a new attempt
To: barebox <barebox@lists.infradead.org>

Hi, All!

Thanks for positive feedback!

I'am going to post new series of patches.

I tried to take into account the feedback, so new patches have many fixes.
The structure of directories was changed.
The big patch was splitted.

But the head.S file was not changed. I will try describe why.
I'am working on a initial mips support. The initial architecture
support must be as simple as possible. The MIPS architecture make
possible start barebox from RAM without virtual memory, cache and
exception handlers support.
So my assembler initialization is very simple. BSS initialization and
copying from ROM to RAM transfered to C-code and I don't see any
reason to change this.

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
