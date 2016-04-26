Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x22b.google.com ([2607:f8b0:4001:c06::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1av1P1-0003De-13
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 11:43:39 +0000
Received: by mail-io0-x22b.google.com with SMTP id f89so12919188ioi.0
 for <barebox@lists.infradead.org>; Tue, 26 Apr 2016 04:43:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1461652480-25992-1-git-send-email-s.hauer@pengutronix.de>
References: <1461652480-25992-1-git-send-email-s.hauer@pengutronix.de>
Date: Tue, 26 Apr 2016 08:43:17 -0300
Message-ID: <CAOMZO5BL5T-H3Ep=heLsX8ntYVYaOQnGmYLEjXnytBBfWCgG4g@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
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
Subject: Re: [PATCH] ARM: dts: Fix partition names
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Apr 26, 2016 at 3:34 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Partition names shouldn't be continuously numbered, instead the part
> behind the '@' should match the reg property. Fix this for all ARM
> device trees.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
