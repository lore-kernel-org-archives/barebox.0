Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo3.mail-out.ovh.net ([46.105.44.175]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVdid-0002Vd-VB
 for barebox@lists.infradead.org; Tue, 06 Nov 2012 07:37:09 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 6E1DBFFBAD7
 for <barebox@lists.infradead.org>; Tue,  6 Nov 2012 08:47:25 +0100 (CET)
Date: Tue, 6 Nov 2012 08:34:58 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121106073458.GD25679@game.jcrosoft.org>
References: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
 <1352051724-16253-1-git-send-email-robert.jarzmik@free.fr>
 <20121104183659.GC29599@game.jcrosoft.org> <87mwyvvs7o.fsf@free.fr>
 <20121105182544.GB25679@game.jcrosoft.org> <878vafvq9b.fsf@free.fr>
 <20121105194907.GC25679@game.jcrosoft.org> <871ug7visp.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <871ug7visp.fsf@free.fr>
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
Subject: Re: [PATCH v2 1/2] commands: change Y-Modem implementation
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On 22:31 Mon 05 Nov     , Robert Jarzmik wrote:
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:
> 
> >> You can't, how could you ? Your console is overwhelmed by garbage input, what
> >> could you possibly do to interrupt it apart from cutting down the sender ?
> > this is an issue if we have more than one we need be able to do so and I may
> > want to use it on an other console_device not necessarely the current one
> >
> > I have often hw that have more than one uart
> And how do you choose the alternative UART ? loady is not provided such a
> parameter in its new form.
by it's name cs1 as example

> Now if you want, I can add it. And if I add it, I'll add a timeout also to the
> xy_flush() function ...
yes please
> 
> >> > can you put the v3 on a tree somewhere so I can pull it
> >> I'll try. I have no external git I can push to. If you have a hint ...
> > https://git.wiki.kernel.org/index.php/GitHosting
> Ah yes, ok. I'll send you the URL once I've amended the patches, along the
> patch mails.
personnaly for at91 we use github tks

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
