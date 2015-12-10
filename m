Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a79ri-000073-Np
 for barebox@lists.infradead.org; Thu, 10 Dec 2015 22:39:11 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 10 Dec 2015 22:38:35 +0000
Message-ID: <1449787121.26955.89.camel@rtred1test09.kymeta.local>
References: <1445330352-30153-1-git-send-email-mkl@pengutronix.de>
 <1445330352-30153-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1445330352-30153-2-git-send-email-mkl@pengutronix.de>
Content-Language: en-US
Content-ID: <CED4CDB562AE2B4F8C069BD206C38BE0@kymetacorp.com>
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
Subject: Re: [PATCH v2 1/8] of_path: of_find_path() factor out device
 detection logic into separate function
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, 2015-10-20 at 10:39 +0200, Marc Kleine-Budde wrote:
> This patch factors out the device detection logic into separate function, so
> that it can be used from another function.

The use of device-path = &mmc0, "partname:0"; breaks because it tries to
get the "partname:0" string by looking at "device-path" in &mmc0.  It
should be looking for device-path in the original node.
 
> +int __of_find_path(struct device_node *node, const char *propname, char **outpath, unsigned flags)
> +{

> +	while (propname) {
> +		ret = of_property_read_string_index(node, propname, i++, &str);

Here 'node' is the device node pointed to by propname in the node
originally passed to of_find_path().  I.e., &mmc0.


>  int of_find_path(struct device_node *node, const char *propname, char **outpath, unsigned flags)
>  {
> -
> -	while (1) {
> -		ret = of_property_read_string_index(node, propname, i++, &str);
> -		if (ret)

But here 'node' is the node that is passed to of_find_path.

> +	return __of_find_path(rnode, propname, outpath, flags);

Because here you pass rnode, not node, to __of_find_path() and then use
it where the original code used node.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
