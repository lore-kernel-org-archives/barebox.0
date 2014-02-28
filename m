Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x234.google.com ([2a00:1450:4013:c00::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJIJw-0001mz-MR
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 07:57:25 +0000
Received: by mail-ee0-f52.google.com with SMTP id c41so1985957eek.25
 for <barebox@lists.infradead.org>; Thu, 27 Feb 2014 23:57:02 -0800 (PST)
Date: Fri, 28 Feb 2014 08:56:56 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140228075655.GA4683@omega>
References: <1393573468-31105-1-git-send-email-alex.aring@gmail.com>
 <1393573468-31105-2-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1393573468-31105-2-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [RFC 1/3] ramfs: add foofs for testing
To: barebox@lists.infradead.org

On Fri, Feb 28, 2014 at 08:44:26AM +0100, Alexander Aring wrote:
> +
> +	/* just for test zero file read */
> +	n = ramfs_get_inode();
> +	n->name = strdup("foobar");
> +	n->mode = S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO;
> +	n->parent = &priv->root;
> +	n->child = priv->root.child;
> +	priv->root.child->next = n;

oops, I overwrite the ".." here, it should be
priv->root.child->next->next = n

sry, but you can test it anyway with this. :-)

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
