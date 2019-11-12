Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from your2.active-elements.de ([88.99.59.121] helo=atsonline.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUXIt-0003me-39
 for barebox@lists.infradead.org; Tue, 12 Nov 2019 14:38:00 +0000
Received: from Mail-10-6.ATS-Intranet.local (p57800e76.dip0.t-ipconnect.de
 [87.128.14.118])
 by xenon.active-elements.de (Postfix) with ESMTPSA id 5317F402396C
 for <barebox@lists.infradead.org>; Tue, 12 Nov 2019 15:37:56 +0100 (CET)
References: <875f8014-b696-b0dc-3c9b-0a9e2d573aa6@atsonline.de>
 <20191112110051.5eujr5354pwgrvvu@pengutronix.de>
From: Andreas Geisenhainer <Andreas.Geisenhainer@atsonline.de>
Message-ID: <d081b9c6-e965-6aab-d2db-1a59f8018a6f@atsonline.de>
Date: Tue, 12 Nov 2019 15:37:55 +0100
MIME-Version: 1.0
In-Reply-To: <20191112110051.5eujr5354pwgrvvu@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Oselas 2018.12.0 toolchain seems to break barebox for AM335x
To: barebox@lists.infradead.org

On 2019-11-12 12:00 p.m., Sascha Hauer wrote:
> 
> Sorry for the delay, I probably knew this issue will be something
> unfortunate to look at...

No Problem, thanks for your hard work. :)

> The second solution is to add -fPIE to CPPFLAGS which is a more general
> approach. I'd like to give this a try in -next.

I tried this more generic, second approach on our local setup and it 
works. \o/

Thanks and kind regards
Andreas

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
