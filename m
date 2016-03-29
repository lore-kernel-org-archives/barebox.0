Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1akwaL-0008H9-Ul
 for barebox@lists.infradead.org; Tue, 29 Mar 2016 16:33:43 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 29 Mar 2016 16:33:16 +0000
Message-ID: <1459269243.20219.1.camel@rtred1test09.kymeta.local>
References: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
 <1458099232-9050-12-git-send-email-andrew.smirnov@gmail.com>
 <20160317073127.GA2329@lws-christ>
 <CAHQ1cqEnyywuHBqjuDetLtv_q4rZ0xA78HAJY58xXGSmt0=tSA@mail.gmail.com>
In-Reply-To: <CAHQ1cqEnyywuHBqjuDetLtv_q4rZ0xA78HAJY58xXGSmt0=tSA@mail.gmail.com>
Content-Language: en-US
Content-ID: <524F7D06DB2B944A995CC4363084302C@kymetacorp.com>
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
Subject: Re: [PATCH 12/16] i.MX6: Apply errata 845369 workaround
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, 2016-03-21 at 09:08 -0700, Andrey Smirnov wrote:
> On Thu, Mar 17, 2016 at 12:31 AM, Stefan Christ <s.christ@phytec.de> wrote:
> > Hi,
> >
> >> @@ -31,4 +31,5 @@ void imx6_cpu_lowlevel_init(void)
> >>       enable_arm_errata_751472_war();
> >>       enable_arm_errata_761320_war();
> >>       enable_arm_errata_794072_war();
> >> +     enable_arm_errata_845369_war();
> >
> > The errata 845369 seems to be a general errata for all ARM Cortex-A9 cores. Why
> > is this fix only apply for the i.MX6 SoC and not for other Cortex-A9 devices in
> > the barebox?

Errata 761320 appears to also be fixed by the change for errata 845369.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
