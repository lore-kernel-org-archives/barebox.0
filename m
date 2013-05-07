Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f231.mail.ru ([217.69.128.161])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZhIi-0002MQ-Mq
 for barebox@lists.infradead.org; Tue, 07 May 2013 12:47:26 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Tue, 07 May 2013 16:46:58 +0400
Message-ID: <1367930818.677360106@f231.mail.ru>
In-Reply-To: <20130507123901.GB1884@game.jcrosoft.org>
References: <1366977055.331524144@f355.mail.ru>
 <1367012916-22780-3-git-send-email-s.hauer@pengutronix.de>
 <20130507123901.GB1884@game.jcrosoft.org>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSCAyLzJdIEFSTTogaS5NWDogY2N4bXg1MTogZGV0ZWN0?=
 =?UTF-8?B?IFNEUkFNIHNpemUgYnkgYm9hcmQgaWQ=?=
To: =?UTF-8?B?SmVhbi1DaHJpc3RvcGhlIFBMQUdOSU9MLVZJTExBUkQ=?= <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

...
> >  void __naked barebox_arm_reset_vector(void)
> >  {
> >  	arm_cpu_lowlevel_init();
> > -	imx51_barebox_entry(0);
> > +	barebox_arm_entry(MX51_CSD0_BASE_ADDR, SZ_128M, 0);
> 
> can we fix the ddr ctrl here by detecting the hw earlier

IIM is needed for detection. So it not possible.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
