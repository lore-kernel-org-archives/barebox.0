Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZopRl-0005R5-06
 for barebox@lists.infradead.org; Wed, 21 Oct 2015 09:12:37 +0000
Date: Wed, 21 Oct 2015 11:12:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151021091215.GD14476@pengutronix.de>
References: <1445330352-30153-1-git-send-email-mkl@pengutronix.de>
 <1445330352-30153-9-git-send-email-mkl@pengutronix.de>
 <20151021071314.GZ14476@pengutronix.de>
 <56275321.40107@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <56275321.40107@pengutronix.de>
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
Subject: Re: [PATCH v2 8/8] state: backend_raw: add hamc support
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 21, 2015 at 10:56:01AM +0200, Marc Kleine-Budde wrote:
> On 10/21/2015 09:13 AM, Sascha Hauer wrote:
> >> +static int state_backend_raw_file_init_digest(struct state *state, struct state_backend_raw *backend_raw)
> >> +{
> >> +	struct digest *digest;
> >> +	const char *algo;
> >> +	const unsigned char *key;
> >> +	int key_len, ret;
> >> +
> >> +	ret = of_property_read_string(state->root, "algo", &algo);
> > 
> > This needs an update to Documentation/devicetree/bindings/barebox/barebox,state.rst
> 
> ok
> 
> >> +	if (ret == -EINVAL)	/* -EINVAL == does not exist */
> >> +		return 0;
> > 
> > -EINVAL is such a widespread error value. Maybe better explicitly test
> > for existence with of_find_property?
> 
> ok
> 
> >> +	else if (ret)
> >> +		return ret;
> >> +
> >> +	ret = keystore_get_secret(state->name, &key, &key_len);
> >> +	if (ret == -ENOENT)	/* -ENOENT == does not exist */
> >> +		return -EPROBE_DEFER;
> >> +	else if (ret)
> >> +		return ret;
> >> +
> >> +	digest = digest_alloc(algo);
> >> +	if (!digest) {
> >> +		dev_info(&state->dev, "algo %s not found - probe deferred\n", algo);
> >> +		return -EPROBE_DEFER;
> >> +	}
> >> +
> >> +	ret = digest_set_key(digest, key, key_len);
> >> +	if (ret) {
> >> +		digest_free(digest);
> >> +		return ret;
> >> +	}
> >> +
> >> +	backend_raw->backend.digest = digest;
> >> +	backend_raw->size_full = digest_length(digest);
> >> +
> >> +	return 0;
> >> +}
> >> +
> >>  /*
> >>   * state_backend_raw_file - create a raw file backend store for a state instance
> >>   *
> >> @@ -1534,8 +1627,14 @@ int state_backend_raw_file(struct state *state, const char *of_path,
> >>  		return -EINVAL;
> >>  
> >>  	backend_raw = xzalloc(sizeof(*backend_raw));
> >> -	backend = &backend_raw->backend;
> >>  
> >> +	ret = state_backend_raw_file_init_digest(state, backend_raw);
> >> +	if (ret) {
> >> +		free(backend_raw);
> >> +		return ret;
> >> +	}
> > 
> > Maybe better make this configurable with correct dependencies
> > (CONFIG_CRYPTO_KEYSTORE, CONFIG_DIGEST) rather than depending on the
> > user selecting the implicit dependencies manually?
> 
> There are noops so that it compile even if KEYSTORE and DIGEST is not
> selected.

I know, but letting the probe defer indefinitely is not a nice way to
tell the user that he misconfigured barebox. Also it's easy to add
something to the HMAC state code that doesn't have noops in the next
step without realizing it.

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
