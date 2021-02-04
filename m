Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7bsp-00066u-3N
 for barebox@lists.infradead.org; Thu, 04 Feb 2021 10:29:08 +0000
Date: Thu, 4 Feb 2021 11:29:05 +0100
Message-ID: <20210204102905.GB19583@pengutronix.de>
References: <20210129125936.20053-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210129125936.20053-1-bst@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] Documentation: state: recommend a partition type GUID
 for state GPT partitions
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Fri, Jan 29, 2021 at 01:59:36PM +0100, Bastian Krause wrote:
> The partition type GUID was generated randomly. Having a defined GUID
> should reduce the risk of collisions in the future.
> 
> A dedicated GUID could also allow us to implement a fallback in case no
> state backend property is defined. This could then look for a GPT
> partition with this partition type GUID and use that as the backend.
> dt-utils could do the same in userspace. This would be similar to [1].
> 
> [1] https://www.freedesktop.org/wiki/Specifications/DiscoverablePartitionsSpec/
> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  Documentation/user/state.rst | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
> index 54aa396257..a0e27d4fe8 100644
> --- a/Documentation/user/state.rst
> +++ b/Documentation/user/state.rst
> @@ -579,6 +579,9 @@ content, its backend-type and *state* variable layout.
>  		};
>  	};
>  
> +If the *state* variable set is set to be located in a GPT partition, use
> +``4778ed65-bf42-45fa-9c5b-287a1dc4aab1`` as the partition type GUID.
> +
>  SRAM
>  ####
>  
> -- 
> 2.30.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
