Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1alueP-0006mb-C2
 for barebox@lists.infradead.org; Fri, 01 Apr 2016 08:41:54 +0000
Date: Fri, 1 Apr 2016 10:41:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160401084129.GA9102@pengutronix.de>
References: <1459241454-21155-1-git-send-email-s.hauer@pengutronix.de>
 <1459241454-21155-7-git-send-email-s.hauer@pengutronix.de>
 <20160329092945.GF2371@lws-christ>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160329092945.GF2371@lws-christ>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 7/7] bbu: print and evaluate image Metadata
To: Stefan Christ <s.christ@phytec.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Stefan,

On Tue, Mar 29, 2016 at 11:29:45AM +0200, Stefan Christ wrote:
> Hi Sascha,
> 
> > @@ -147,6 +218,8 @@ int barebox_update(struct bbu_data *data)
> >  	if (!data->devicefile)
> >  		data->devicefile = handler->devicefile;
> >  
> > +	bbu_check_metadata(data);
> > +
> >  	ret = handler->handler(handler, data);
> >  	if (ret == -EINTR)
> >  		printf("update aborted\n");
> 
> hmm. I think the code should be 
> 
>      ret = bbu_check_metadata(data);
>      if (ret)
>           return ret;
> 
> or something. Otherwise the verification of the compatible doesn't abort the
> update process. The function bbu_check_metadata returns -EINVAL if the
> compatible is wrong.

Indeed, fixed this.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
