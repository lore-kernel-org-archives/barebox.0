Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S5dIX-0005xD-4V
 for barebox@lists.infradead.org; Thu, 08 Mar 2012 13:22:26 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 00357DC807F
 for <barebox@lists.infradead.org>; Thu,  8 Mar 2012 14:25:29 +0100 (CET)
Date: Thu, 8 Mar 2012 14:11:34 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120308131134.GO12248@game.jcrosoft.org>
References: <CAACwST+JNsH0Yic-SbuA+6sYCWq-cE=M_nEy+ybgJebKZ4hY1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAACwST+JNsH0Yic-SbuA+6sYCWq-cE=M_nEy+ybgJebKZ4hY1Q@mail.gmail.com>
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
Subject: Re: __bss_stop question
To: George Stefan <stefan.george87@gmail.com>
Cc: barebox@lists.infradead.org

On 14:23 Thu 08 Mar     , George Stefan wrote:
>    Hello all,
>    Is __bss_stop the end of barebox.bin? 
>    Meaning that, if i have i file which i dd it with offset=768
>    could i refer to it with __bss_stop. 
>    Should i consider also the bareboxenv, meaning that
>    the end of barebox.bin is __bss_stop + sizeof(bareboxenv)?
>    PS: board is imx53 loco
the env is where you want

and barebox_image_size will give you the size of barebox

and the end of barebox is __bss_start

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
