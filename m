Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJmFX-0000aC-Fw
 for barebox@lists.infradead.org; Fri, 18 May 2018 20:45:17 +0000
Date: Fri, 18 May 2018 22:44:49 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180518204449.GA3020@ravnborg.org>
References: <20180518204129.9522-1-vivien.didelot@savoirfairelinux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180518204129.9522-1-vivien.didelot@savoirfairelinux.com>
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
Subject: Re: [PATCH v2] net: use dev_warn() when no MAC address is set
To: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
Cc: barebox@lists.infradead.org

On Fri, May 18, 2018 at 04:41:29PM -0400, Vivien Didelot wrote:
> When a SoC such as VF610 has no addresses programmed for both its
> interfaces, the "No MAC address set" warning can be confusing:
> 
>     booting 'net'
>     WARNING: net: warning: No MAC address set. Using random address a2:e8:be:79:72:01
>     WARNING: net: warning: No MAC address set. Using random address aa:d5:d7:10:c0:42
> 
> This patch uses dev_warn() instead and removes the redundant "warning":
> 
>     booting 'net'
>     WARNING: eth0: No MAC address set. Using random address a2:e8:be:79:72:01
>     WARNING: eth1: No MAC address set. Using random address 4e:be:c4:bc:ce:36
> 
> Signed-off-by: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
Acked-by: Sam Ravnborg <sam@ravnborg.org>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
