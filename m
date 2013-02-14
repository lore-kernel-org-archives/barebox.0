Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f174.google.com ([209.85.215.174])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5vh5-0001z8-Oj
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 10:05:32 +0000
Received: by mail-ea0-f174.google.com with SMTP id 1so899129eaa.5
 for <barebox@lists.infradead.org>; Thu, 14 Feb 2013 02:05:24 -0800 (PST)
Date: Thu, 14 Feb 2013 11:06:13 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130214100612.GA2152@x61s.8.8.8.8>
References: <1360833179-10324-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360833179-10324-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] ARM pbl: move piggydata before bss
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

i am a little bit confused. I add in commit

43afe67390697041d1d16d4e5c934d2bfa831399

the data section, but I forgot to change this linker script file.
Does it work now? It seems that pbl doesn't uses pointers from
asm-generic/sections.h or never includes this file.

Should I write a patch to add data section to this linker script file?

Regards
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
