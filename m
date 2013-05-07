Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZkTg-0007qk-TT
 for barebox@lists.infradead.org; Tue, 07 May 2013 16:10:58 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 12CA7DC1582
 for <barebox@lists.infradead.org>; Tue,  7 May 2013 18:10:33 +0200 (CEST)
Date: Tue, 7 May 2013 18:06:10 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130507160610.GC1884@game.jcrosoft.org>
References: <1366977055.331524144@f355.mail.ru>
 <1367012916-22780-3-git-send-email-s.hauer@pengutronix.de>
 <20130507123901.GB1884@game.jcrosoft.org>
 <1367930818.677360106@f231.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367930818.677360106@f231.mail.ru>
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
Subject: Re: [PATCH 2/2] ARM: i.MX: ccxmx51: detect SDRAM size by board id
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 16:46 Tue 07 May     , Alexander Shiyan wrote:
> ...
> > >  void __naked barebox_arm_reset_vector(void)
> > >  {
> > >  	arm_cpu_lowlevel_init();
> > > -	imx51_barebox_entry(0);
> > > +	barebox_arm_entry(MX51_CSD0_BASE_ADDR, SZ_128M, 0);
> > 
> > can we fix the ddr ctrl here by detecting the hw earlier
> 
> IIM is needed for detection. So it not possible.
IIM is just register to read

Best REgards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
