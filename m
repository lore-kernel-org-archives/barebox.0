Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJk7a-0003aA-Rr
 for barebox@lists.infradead.org; Mon, 16 Apr 2012 11:29:28 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 98F1AFF8DBC
 for <barebox@lists.infradead.org>; Mon, 16 Apr 2012 13:30:40 +0200 (CEST)
Date: Mon, 16 Apr 2012 13:11:08 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120416111108.GV30672@game.jcrosoft.org>
References: <OF62A1617C.00758B18-ONC12579E2.00369768-C12579E2.00370E2B@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF62A1617C.00758B18-ONC12579E2.00369768-C12579E2.00370E2B@o0802.rafi.inhouse>
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
Subject: Re: barebox JSON
To: christian.buettner@rafi.de
Cc: barebox@lists.infradead.org

On 12:01 Mon 16 Apr     , christian.buettner@rafi.de wrote:
>    hi all,
> 
>    is there allready an approach to accept JSON messages through a UART or
>    Ethernet interface?
>    I am thinking of an update mechanism in the bootloader, beeing able to
>    exchange the kernel, rootfs or change env settings..
JSON no

but you can use script to do it other container

and protocol like xyzmodem /nfs and co so what is the advantage of JSON?

Best Regards,
J.
> 
>    - christian

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
