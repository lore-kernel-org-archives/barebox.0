Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYeZI-00037O-Ic
 for barebox@lists.infradead.org; Wed, 24 Feb 2016 18:53:49 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 24 Feb 2016 18:53:23 +0000
Message-ID: <1456340037.25961.13.camel@rtred1test09.kymeta.local>
References: <1455978465-28919-2-git-send-email-pmamonov@gmail.com>
 <1456310925-1057-1-git-send-email-pmamonov@gmail.com>
 <20160224172148.fd09cf0757b3b52348103638@gmail.com>
 <20160224180701.08b3d179@berta> <20160224181227.GR3939@pengutronix.de>
In-Reply-To: <20160224181227.GR3939@pengutronix.de>
Content-Language: en-US
Content-ID: <EDFDEED6AEB0C94CA439A87C4326C9E4@kymetacorp.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH v2] input: usb keyboard: fix CTRL+C
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Sam Ravnborg <sam@ravnborg.org>, Peter Mamonov <pmamonov@gmail.com>

On Wed, 2016-02-24 at 19:12 +0100, Sascha Hauer wrote:
> > > >  
> > > > -	if (modstate & (1 << 0))
> > > > +	if (modstate & (1 << 1))
> > > > +		ascii = keycode_bb_ctrl_keys[ev->code];
                
           ascii = keycode_bb_keys[ev->code];
           ascii = ascii >= 'a' ? CTL_CH(ascii): 0;

> > Sasha, did you mean to eliminate the CTRL-keymap completely?
> 
> No, I didn't, although that would be an option aswell. It would safe us
> a few more bytes in the binary. The question is, how many more keys are
> in the CTRL map that are interesting for us? Are there more than CTRL-C?
> If yes, then it's probably better to keep the map. If not, a special
> CTRL-C case in code might be the better option.

Would the above, or a slight modification, be ok?  It gets almost all
the controls keys one could care about.

Ignoring control for all keys other than c doesn't make sense to me.
Does anything else do that?
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
