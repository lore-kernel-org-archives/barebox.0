Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx01.eckelmann.de ([217.19.183.92])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD4Hv-0007OP-1b
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 09:08:18 +0000
From: "Schenk, Gavin" <G.Schenk@eckelmann.de>
Date: Thu, 18 Oct 2018 09:07:59 +0000
Message-ID: <38931226c1f09227e1fa23b3908a8738ca855cf8.camel@eckelmann.de>
References: <20181017084707.11878-1-s.hauer@pengutronix.de>
 <5017d68f9bbcab2c4e3af5c20d29d3452fe6410f.camel@eckelmann.de>
 <20181018072356.cnkzl62v4yebvifg@pengutronix.de>
In-Reply-To: <20181018072356.cnkzl62v4yebvifg@pengutronix.de>
Content-Language: de-DE
Content-ID: <9719ED004871EC42AF0A95C0E009DAFE@eckelmann.de>
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
Subject: Re: [PATCH] of: fix reproducible node name for legacy vs. new
 partition binding
To: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, =?utf-8?B?R8O2dHppbmdlciwgSm9uYXRoYW4=?= <J.Goetzinger@eckelmann.de>

Hi Sascha,

> > 1. [x] of_partition_binding=new in barebox and barebox-state in Linux is working.
> > 2. [ ] set of_partition_binding=legacy in barebox and barebox-state in Linux fails.
> > 3. [x] apply the patch and rebuild and install barebox
> > 4. [x] set of_partition_binding=legacy and barebox-state in Linux is working again \o/.
> > 
> > Is this test sufficient?
> > If not what are other usefull testcases?
> 
> Thanks for testing.

You are welcome, thanks you for this important patch!

> 
> Another test would be if you use the legacy binding in your barebox
> devicetree and then set of_partition_binding=new. Without this patch it
> should fail in Linux and with it it should work. That's the less
> important case though.
> 

Understood. Unfortunately I do not have time to test this immediately.

Because state-framework is essential for RAUC and must not break in field, we plan to integrate tests of state-framework 
into our jenkins/labgrid. We will try to consider your testcase there.

@Jonathan: If you are back in office please remind me to talk about including this state-framework tests. Feel free to
update the task (or simply implement it :) )

Regards
Gavin
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
