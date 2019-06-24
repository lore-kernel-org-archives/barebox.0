Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfO6q-0004St-Un
 for barebox@lists.infradead.org; Mon, 24 Jun 2019 12:30:10 +0000
Message-ID: <0dfe3495603bae2becd0ed6223b6e048c6a43c76.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 24 Jun 2019 14:30:05 +0200
In-Reply-To: <1561374944.28933.40.camel@diehl.com>
References: <20190624103642.19184-1-rhi@pengutronix.de>
 <1561374944.28933.40.camel@diehl.com>
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
Subject: Re: [PATCH] images: ignore i.MX signed (USB) images and outputs of
 imx-csf tool
To: Denis OSTERLAND <denis.osterland@diehl.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

> AFAIK csf is the input format for cst tool.
> So it should be s/csf/cst/.

Yes and no. CSF (Command Sequence File) is the input format for the
cst, however the cst outputs a csf binary blob containing the
certificates, signatures and the required sequence of commands for the
bootrom.
.csfbin is the correct name either way because barebox uses these
filenames as an intermediate step before appending the csf binary blob
to the image:

$ ls images/*csfbin
images/start_nxp_imx8mq_evk.pblb.simximg.csfbin
$

I think changing the filename would not make much sense, since the
csfbin still contains the same sequence of commands, albeit in a binary
form with additional data attached.

Hope this helps,
Rouven Czerwinski


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
