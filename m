Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo1.mail-out.ovh.net ([87.98.158.110]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TS6R3-0003MK-8E
 for barebox@lists.infradead.org; Sat, 27 Oct 2012 13:28:22 +0000
Received: from mail174.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id AF018FF9EF8
 for <barebox@lists.infradead.org>; Sat, 27 Oct 2012 15:38:29 +0200 (CEST)
Date: Sat, 27 Oct 2012 15:26:04 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121027132604.GA28904@game.jcrosoft.org>
References: <1351278011-26982-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351278011-26982-1-git-send-email-robert.jarzmik@free.fr>
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
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On 21:00 Fri 26 Oct     , Robert Jarzmik wrote:
> The current Y-Modem implementation has some limitations:
>  - Y-Modem/G protocol is not supported
>  - Multiple files (aka. batch) transfers are not supported
>  - Transfer speed over fast lines (USB console) is slow
>  - Code is not trivial to maintain (personnal opinion)
> 
> This implementation tries to address all these points by
> introducing loady2 command.
> 
> The effects are :
>  - transfer speed for Y-Modem over USB jumps from 2kBytes/s
>    to 180kBytes/s
>  - transfer speed for Y-Modem/G jumps to 200kBytes/s
>  - multiple file transfers are possible
> 
> This command was tested on a USB console. Before going any
> further, I'd like barebox communauty opinion about :
>  - is this code more maintainable that xyzModem.c ?
>  - is some xyzModem.c functionality missing ?
>  - can anybody test it on a slow UART line (even better if
>    it is noisy) to check protocol corner cases ?
personnaly I use kermit so I need xmodem

did you try it?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
