Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSMZF-0001zW-FY
 for barebox@lists.infradead.org; Tue, 25 Mar 2014 08:18:43 +0000
Date: Tue, 25 Mar 2014 09:18:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140325081815.GM17250@pengutronix.de>
References: <C89EFD3CD56F64468D3D206D683A8D2203154121@ldam-msx2.fugro-nl.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C89EFD3CD56F64468D3D206D683A8D2203154121@ldam-msx2.fugro-nl.local>
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
Subject: Re: Barebox x86 IDE support
To: "Stam, Michel [FINT]" <M.Stam@fugro.nl>
Cc: barebox@lists.infradead.org

Hi Michel,

On Mon, Mar 24, 2014 at 10:37:48AM +0100, Stam, Michel [FINT] wrote:
> Hello maintainers,
> 
> I was wondering if one of you has had time to verify these patches and apply them to trunk?

Could you send the patches as a series so that it's easier to comment on
the patches on the list?

There are some things to comment on, I think the most important one is
this:

> +/*
> + * request an io region inside the io space
> + */
> +struct resource *request_io_region(const char *name,
> +		resource_size_t start, resource_size_t end,int type)
> +{
> +	return request_region(&iomem_resource, name, start, end, type);
> +}
> 

You request here from the iomem resource, but ioports are a completely
separate resource, so you have to use a new toplevel resource like
this:

/* The root resource for the whole io space */
struct resource io_resource = {
	.start = 0,
	.end = 0xffffffff,
	.name = "ioport",
	.children = LIST_HEAD_INIT(io_resource.children),
};

/*
 * request an io region inside the io space
 */
struct resource *request_io_region(const char *name,
		resource_size_t start, resource_size_t end)
{
	return request_region(&io_resource, name, start, end, IORESOURCE_IO);
}

The 'type' argument to request_io_region is unnecessary since the
function name already implies it, right?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
