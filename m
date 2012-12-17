Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo5.mail-out.ovh.net ([46.105.52.148]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TkVCM-0007i6-2E
 for barebox@lists.infradead.org; Mon, 17 Dec 2012 07:33:15 +0000
Received: from mail188.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 609AA1080166
 for <barebox@lists.infradead.org>; Mon, 17 Dec 2012 08:32:37 +0100 (CET)
Date: Mon, 17 Dec 2012 08:22:17 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121217072217.GC26483@game.jcrosoft.org>
References: <20121213163758.GB26483@game.jcrosoft.org>
 <20121214231514.GC26326@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121214231514.GC26326@pengutronix.de>
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
Subject: Re: [PATCH 0/9] introduction of dmesg support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 00:15 Sat 15 Dec     , Sascha Hauer wrote:
> On Thu, Dec 13, 2012 at 05:37:58PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > HI,
> > 
> > 	we currently have 2 fifo at comsole level one for input one for output
> > 	we fill the output fifo before any console is registered and then
> > 	empty it
> > 
> > 	Now we introduce a new mecanism as in the kernel dmesg
> > 
> > 	we will always fill the output kfifo with drivers output
> > 
> > 	as in barebox we have 2 world
> > 
> > 	device/drivers and applicaiotn (commands)
> > 
> > 	so for now on drivers will have to use pr_xxx and dev_xxx and
> > 	application will use printf
> > 
> > 	dmesg will print the kfifo at any time
> > 
> > 	we will extend this later with more control of what the drivers output
> > 	on the console or just in the fifo
> > 
> > 	This new eature is optionnal if dmes is disable we continue as before
> > 
> 
> Generally I like the idea. Overall I think it's nice to be able to
> control the verbosity during runtime.
This is the plan
but as a second step

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
