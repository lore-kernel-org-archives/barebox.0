Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1ROoZv-00075I-IX
 for barebox@lists.infradead.org; Fri, 11 Nov 2011 10:43:24 +0000
Received: from mail172.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 4D46EFFCA6A
 for <barebox@lists.infradead.org>; Fri, 11 Nov 2011 11:49:19 +0100 (CET)
Date: Fri, 11 Nov 2011 11:41:50 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111111104150.GA15318@game.jcrosoft.org>
References: <1321002211-14950-1-git-send-email-J.Kilb@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1321002211-14950-1-git-send-email-J.Kilb@phytec.de>
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
Subject: Re: [PATCH] Remove md5,sh1,sh2 from lib/Makefile.
To: Juergen Kilb <J.Kilb@phytec.de>
Cc: barebox@lists.infradead.org

On 10:03 Fri 11 Nov     , Juergen Kilb wrote:
> Commit 4ac3a1f9 has moved the files md5.c, sh1.c
> and sh2.c from lib/* to crypto/*.
> But the files were still listed in lib/Makefile.
the commit modify the Makefile correctly sn other comit breakit
> 
> Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
Sacha send a fix already

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
