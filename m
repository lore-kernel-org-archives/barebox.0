Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WekhQ-0005lP-SV
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 12:30:21 +0000
Received: by mail-lb0-f171.google.com with SMTP id u14so2046116lbd.30
 for <barebox@lists.infradead.org>; Mon, 28 Apr 2014 05:29:55 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <20140428110039.GQ5858@pengutronix.de>
References: <1398679427.7861.41.camel@mars>
 <20140428110039.GQ5858@pengutronix.de>
Date: Mon, 28 Apr 2014 14:29:51 +0200
Message-ID: <1398688191.7861.81.camel@mars>
Mime-Version: 1.0
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
Subject: Re: [PATCH] genenv: fix tempdir creation when target is a relative
 path
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 2014-04-28 at 13:00 +0200, Sascha Hauer wrote:

> I can confirm this. Could you try the attached patch?

Yeah, it fixes the Bug. If you want you can add my

 Tested-by: Christoph Fritz <chf.fritz@googlemail.com>

Thanks
 -- Christoph


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
