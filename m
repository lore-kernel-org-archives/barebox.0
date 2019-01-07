Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta26.messagelabs.com ([85.158.142.3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggTGW-0000Bb-2P
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 11:40:22 +0000
From: <Heinrich.Toews@wago.com>
Date: Mon, 7 Jan 2019 11:40:13 +0000
Message-ID: <aca969f3-1591-b18b-3a4b-49ad546092d5@wago.com>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
 <20181214141730.26181-23-s.hauer@pengutronix.de>
In-Reply-To: <20181214141730.26181-23-s.hauer@pengutronix.de>
Content-Language: en-US
Content-ID: <864301690514F240A8B40B0F2D462DFA@WAGO.com>
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
Subject: Re: [PATCH 22/23] ARM: omap: Add board support for WAGO pfc200
 platform
To: barebox@lists.infradead.org

Hi Sascha,

Am 14.12.18 um 15:17 schrieb Sascha Hauer:
> This adds support for the AM3517 based WAGO pfc100/200 SPS.
                                                   ^
CAUTION: The PFC100 SPS is based on AM335x and NOT AM35xx. Would be nice 
to fix the commit message in order to prevent a misunderstanding.

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---

---

Thanks,
Heinrich
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
