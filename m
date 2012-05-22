Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWfsC-0007A3-IM
 for barebox@lists.infradead.org; Tue, 22 May 2012 03:35:00 +0000
Message-ID: <4FBB0966.4060908@signal11.us>
Date: Mon, 21 May 2012 23:35:02 -0400
From: Alan Ott <alan@signal11.us>
MIME-Version: 1.0
References: <1337615616-7209-1-git-send-email-alan@signal11.us>
 <20120521200614.GG30400@pengutronix.de>
 <27196FB3-68EB-4583-9AF3-B256AE562D72@jcrosoft.com>
In-Reply-To: <27196FB3-68EB-4583-9AF3-B256AE562D72@jcrosoft.com>
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
Subject: Re: [PATCH] common: Make MENU depend on PROCESS_ESCAPE_SEQUENCE
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 05/21/2012 10:40 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi
>
> Please revert break my work on at91bootstrap where we use the menu without any shell support
>
> And the does work with or without hush support

Upon closer inspection, it should be:

     config MENU
     bool
     prompt "Menu Framework"
+    select PROCESS_ESCAPE_SEQUENCE if SHELL_HUSH

I have posted v2 which does this, and I agree that the original patch
should be reverted in favor of the new one.

Steps to reproduce on the master branch:

1. build on amd64 (no ARCH= or CROSS_COMPILE= or anything else)
2. make distclean
3. make menuconfig
4.    Select "Menu Framework" from General Settings
5.    leave everything else default.
6. make
7. output at [1] (link error).

Alan.

[1]
  LD      barebox
common/built-in.o: In function `print_menu_entry':
menu.c:(.text+0x5415): undefined reference to `process_escape_sequence'
common/built-in.o: In function `print_menu':
menu.c:(.text+0x54a3): undefined reference to `process_escape_sequence'
collect2: ld returned 1 exit status
make: *** [barebox] Error 1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
