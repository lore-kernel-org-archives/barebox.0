Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSFse-0006vo-RE
 for barebox@lists.infradead.org; Sat, 27 Oct 2012 23:33:34 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
In-Reply-To: <20121027132604.GA28904@game.jcrosoft.org> (Jean-Christophe
 PLAGNIOL-VILLARD's message of "Sat, 27 Oct 2012 15:26:04 +0200")
References: <1351278011-26982-1-git-send-email-robert.jarzmik@free.fr>
 <20121027132604.GA28904@game.jcrosoft.org>
Date: Sun, 28 Oct 2012 01:33:16 +0200
Message-ID: <871ugjxzgj.fsf@free.fr>
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
Subject: Re: [RFC PATCH] commands: change Y-Modem implementation
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:

> On 21:00 Fri 26 Oct     , Robert Jarzmik wrote:
> personnaly I use kermit so I need xmodem
>
> did you try it?
I just did.

There is a small fix needed on top of my previous patch to make xmodem behave
properly with a minicom+xmodem setup (sx -vv barebox.bin). I'll put that in the
second revision of the patch, once I'll have tries transfers over real serial
lines just as Antony did.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
