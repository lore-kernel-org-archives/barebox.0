Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5GZz-0000Dl-HD
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 14:11:28 +0000
Received: from mail416.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id EFBEADC0858
 for <barebox@lists.infradead.org>; Tue, 12 Feb 2013 15:21:47 +0100 (CET)
Date: Tue, 12 Feb 2013 15:10:16 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130212141016.GE19322@game.jcrosoft.org>
References: <1360674608-12732-1-git-send-email-plagnioj@jcrosoft.com>
 <511A4671.2070000@calxeda.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <511A4671.2070000@calxeda.com>
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
Subject: Re: [PATCH 1/1] ahci-generic: add oftree support
To: Rob Herring <rob.herring@calxeda.com>
Cc: barebox@lists.infradead.org

On 07:41 Tue 12 Feb     , Rob Herring wrote:
> On 02/12/2013 07:10 AM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > calxeda use the generic driver but have it's own compatible cf Linux kernel
> > Documentation
> > 
> > Cc: Rob Herring <rob.herring@calxeda.com>
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/ata/ahci-generic.c |   11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/drivers/ata/ahci-generic.c b/drivers/ata/ahci-generic.c
> > index 4077627..62f2a19 100644
> > --- a/drivers/ata/ahci-generic.c
> > +++ b/drivers/ata/ahci-generic.c
> > @@ -35,9 +35,20 @@ err_free:
> >  	return ret;
> >  }
> >  
> > +static __maybe_unused struct of_device_id ahci_dt_ids[] = {
> > +	{
> > +		.compatible = "ahci",
> 
> I don't believe this is a documented compatible value.
I see it

Dame out of tree client linux kernel

I'm sending a path to the dt-ml so we ca have it too

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
