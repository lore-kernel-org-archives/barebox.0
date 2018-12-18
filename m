Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZGKK-0005ZU-Il
 for barebox@lists.infradead.org; Tue, 18 Dec 2018 14:26:29 +0000
Received: by mail-ed1-x544.google.com with SMTP id o10so14007008edt.13
 for <barebox@lists.infradead.org>; Tue, 18 Dec 2018 06:26:17 -0800 (PST)
From: Peter Korsgaard <peter@korsgaard.com>
References: <cover.61efbc8cc3e2f39adccce96b40af1bb32a30bc66.1545130027.git-series.r.czerwinski@pengutronix.de>
 <20181218140606.lmubb4dff77khwgq@pengutronix.de>
Date: Tue, 18 Dec 2018 15:26:15 +0100
In-Reply-To: <20181218140606.lmubb4dff77khwgq@pengutronix.de> (Sascha Hauer's
 message of "Tue, 18 Dec 2018 15:06:06 +0100")
Message-ID: <87mup229o8.fsf@dell.be.48ers.dk>
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
Subject: Re: [PATCH v5 0/9] Raspberry Pi miniuart support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Rouven Czerwinski <r.czerwinski@pengutronix.de>

>>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:

 > On Tue, Dec 18, 2018 at 11:47:35AM +0100, Rouven Czerwinski wrote:
 >> This patch series adds support for the raspberry pi miniuart (also called
 >> aux-uart) to barebox.
 >> With this series the miniuart overlay is no longer necessary to start barebox on
 >> Raspberry Pi 3.
 >> 
 >> v5:
 >> - Add defines for register and base values
 >> from Sascha Hauer and Roland Hieber

 > Applied, thanks

Where did those defines actually go? I still see a bunch of magic
values.

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
