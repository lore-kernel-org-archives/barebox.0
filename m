Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTyww-000217-Mp
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 17:53:03 +0000
Received: from mail178.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 3F148FFABCA
 for <barebox@lists.infradead.org>; Thu,  1 Nov 2012 19:00:11 +0100 (CET)
Date: Thu, 1 Nov 2012 18:50:49 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121101175049.GK29599@game.jcrosoft.org>
References: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH 0/2] Y-Modem implementation change
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On 18:37 Thu 01 Nov     , Robert Jarzmik wrote:
> Hi everyone,
> 
> This patchset aims at changing the Y-Modem protocol implementation.
> You have already seen the RFC version, this is the next version, which :
>  - provides a much more tested version
>  - is ready for review
> 
> The following comments have been taken into account :
>  - Antony: testing on a serial line
>  - Sascha: split between protocol and commands
>  - Jean-Christophe: kermit protocol change
> 
> So before doing the real review, could I ask of you :
>  - Antony: could you redo your test over a serial line by applying only
>            the first patch so that you can compare loady and loady2 ?
>            Don't use "loady2 -g", as Y-Modem/G protocol requires a 
>            lossless line (USB), and a serial line cannot guarantee it.
>  - Sascha: does the split command/protocol suit you ?
>  - Jean-Christophe: I left the loadb implementation as it is. The goal
>                     of the patch is to change X-Modem and Y-Modem(G)
>                     implementation, not kermit. Could you test that I
>                     have not created a regression of loadb ?

I'll prefer to have a new command named xyz so we have no confusion between
loadb and the new one

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
