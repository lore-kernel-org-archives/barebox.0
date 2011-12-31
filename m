Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RgznS-0008T7-Sc
 for barebox@lists.infradead.org; Sat, 31 Dec 2011 14:20:32 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B9698DC3701
 for <barebox@lists.infradead.org>; Sat, 31 Dec 2011 15:21:21 +0100 (CET)
Date: Sat, 31 Dec 2011 15:13:52 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111231141352.GA945@game.jcrosoft.org>
References: <1324503044-6085-1-git-send-email-robert.jarzmik@free.fr>
 <20111231082920.GB16816@game.jcrosoft.org> <877h1cua95.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <877h1cua95.fsf@free.fr>
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
Subject: Re: [PATCH V4 1/7] drivers/mtd: move nand.c into core.c
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On 14:43 Sat 31 Dec     , Robert Jarzmik wrote:
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:
> 
> > On 22:30 Wed 21 Dec     , Robert Jarzmik wrote:
> >> Move nand core into the global MTD core.
> >> 
> >> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
> >> ---
> > the nand support is broken
> Hi Jean-Christophe,
> 
> Sasha tested it on his pcm043 board, and everything worked fine.
> Could you be more specific when you say "NAND support is broken" ? Which board,
> which NAND, which barebox tree (today's next ?), and which commands do you input
> that make you say "doesn't work" ?
impossible to write on the bb file
correctly

Best Regards,
J.
> 
> Cheers.
> 
> -- 
> Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
