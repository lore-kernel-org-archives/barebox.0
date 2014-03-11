Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22d.google.com ([2a00:1450:4013:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WNHSz-0002ky-FP
 for barebox@lists.infradead.org; Tue, 11 Mar 2014 07:51:14 +0000
Received: by mail-ea0-f173.google.com with SMTP id r15so4084227ead.18
 for <barebox@lists.infradead.org>; Tue, 11 Mar 2014 00:50:50 -0700 (PDT)
Date: Tue, 11 Mar 2014 08:50:44 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140311075043.GA4321@omega>
References: <5319AA25.5050803@sam-solutions.net>
 <20140310072003.GH17250@pengutronix.de>
 <20140310080213.GA32061@x61s.Speedport_W_921V_1_24_000>
 <20140311052922.GI17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140311052922.GI17250@pengutronix.de>
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
Subject: Re: [PATCH 1/5] mtd: Update internal API to support 64-bit device size
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Grigory Milev <G.Milev@sam-solutions.com>, barebox@lists.infradead.org, Dmitry Lavnikevich <D.Lavnikevich@sam-solutions.com>, Dmitry Lavnikevich <d.lavnikevich@sam-solutions.net>

On Tue, Mar 11, 2014 at 06:29:22AM +0100, Sascha Hauer wrote:
> > offset but we should do it right at first time.
> 
> Yes, right. We should make this uint64_t.
> 

There are also more things which needs a uint64_t like the offset
parameter of libmtd_* functions. :-/

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
