Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo5.mail-out.ovh.net ([87.98.174.144]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VH7zD-0005SN-2O
 for barebox@lists.infradead.org; Wed, 04 Sep 2013 07:58:48 +0000
Received: from mail639.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 730F91018192
 for <barebox@lists.infradead.org>; Wed,  4 Sep 2013 09:58:22 +0200 (CEST)
Date: Wed, 4 Sep 2013 09:59:19 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130904075919.GD22507@ns203013.ovh.net>
References: <1378182813-30776-1-git-send-email-antonynpavlov@gmail.com>
 <20130903084123.60bf8561ef15b863013431e7@gmail.com>
 <20130903112156.GL19197@ns203013.ovh.net>
 <20130904063013.GF30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130904063013.GF30088@pengutronix.de>
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
Subject: Re: [PATCH] MIPS: qemu-malta: switch to devicetree
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:30 Wed 04 Sep     , Sascha Hauer wrote:
> On Tue, Sep 03, 2013 at 01:21:56PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 08:41 Tue 03 Sep     , Antony Pavlov wrote:
> > > On Tue,  3 Sep 2013 08:33:33 +0400
> > > > -static struct NS16550_plat serial_plat = {
> > > > -	.clock = 1843200, /* no matter for emulated port */
> > > > -	.shift = 0,
> > > > -};
> > > > -
> > > > -static int malta_console_init(void)
> > > > -{
> > > > -	barebox_set_model("qemu malta");
> > > >  	barebox_set_hostname("malta");
> > > >
> > > 
> > > May be it is reasonable to add hostname support to dts?
> > > 
> > > The lonely barebox_set_hostname() in the malta board code looks very pathetically :)
> > 
> > we could use the model propertie for this
> 
> The model property is already used for the verbose name of a board. I
> described it as:
> 
> /*
>  * The model is the verbose name of a board. It can contain
>  * whitespaces, uppercase/lowcer letters, digits, ',', '.'
>  * '-', '_'
>  */
> 
> Whereas the hostname is without whitespaces, I described it as:
> 
> /*
>  * The hostname is supposed to be the shortname of a board. It should
>  * contain only lowercase letters, numbers, '-', '_'. No whitespaces
>  * allowed.
>  */
> 
> I think it is reasonable to add a hostname property to the devicetree.
> The last time I thought about this I couldn't really agree with myself
> how to name it.
how about use the compatible property?

for me I'll just put
model = "toto toto toto" , "toto_toot_toto";

if no second string create a hotname on the fly by replace the forbidden char
by '_'

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
