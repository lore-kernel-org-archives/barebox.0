Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo1.mail-out.ovh.net ([87.98.179.142]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TeRPx-00021J-M6
 for barebox@lists.infradead.org; Fri, 30 Nov 2012 14:18:14 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 00D75FFA150
 for <barebox@lists.infradead.org>; Fri, 30 Nov 2012 15:29:57 +0100 (CET)
Date: Fri, 30 Nov 2012 15:16:18 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121130141618.GD8327@game.jcrosoft.org>
References: <CA+pW49qF1gN6Ty=T44MJzCXkmfwhJC0Lj72-zG+ng=mvX7VRgw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+pW49qF1gN6Ty=T44MJzCXkmfwhJC0Lj72-zG+ng=mvX7VRgw@mail.gmail.com>
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
Subject: Re: How to read a file in UBIFS file system from barebox
To: Madhu koriginja <madhava.koriginja@gmail.com>
Cc: barebox@lists.infradead.org

On 19:30 Fri 30 Nov     , Madhu koriginja wrote:
>    Hi All,
>                I am using UBIFS file system. My kernel is placed in the file
>    system (/boot/uImage). I want to read the kernel(uImage) from UBIFS file
>    system at barebox to load the kernel and boot it. 
>    Please give me some ideas how to get this functionality.
we do not have ubifs yet

so you can not today you need to add the ubifs first

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
