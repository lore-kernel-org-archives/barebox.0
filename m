Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22c.google.com ([2a00:1450:400c:c09::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aBmOk-00009m-3M
 for barebox@lists.infradead.org; Wed, 23 Dec 2015 16:36:22 +0000
Received: by mail-wm0-x22c.google.com with SMTP id p187so152850282wmp.1
 for <barebox@lists.infradead.org>; Wed, 23 Dec 2015 08:36:01 -0800 (PST)
Date: Wed, 23 Dec 2015 17:35:51 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20151223163532.GA1068@omega>
References: <20151223191058.4ffb07f4@berta>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151223191058.4ffb07f4@berta>
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
Subject: Re: [RFC] device probe order
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Wed, Dec 23, 2015 at 07:10:58PM +0300, Peter Mamonov wrote:
> Dear All,
> 
> I've ported an UHCI driver from the u-boot to the barebox (WIP). To
> interoperate with the EHCI driver, the UHCI driver should be probed
> ater the EHCI driver. Both drivers are binded via the device tree
> mechanism. How can i achieve the correct probe order?
> 

Normally this should done by returning "-EPROBE_DEFER" inside the probe
function. There was some RFC last years for supporting EPROBE_DEFER [0]
and it seems these are mainline.

However you need some bool which indicates that the EHCI driver is probed.

int uhci_probe(foobar) {

if (!indicate_ehci_is_probed(foobar)
	return -EPROBE_DEFER;
}

- Alex

[0] http://barebox.infradead.narkive.com/ZWIXXU0R/patch-v2-0-6-introduce-deferred-probing

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
