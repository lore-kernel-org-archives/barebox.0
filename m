Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T5zvM-0007Nk-3I
 for barebox@lists.infradead.org; Mon, 27 Aug 2012 14:04:17 +0000
Date: Mon, 27 Aug 2012 16:04:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120827140413.GJ26594@pengutronix.de>
References: <20120824044613.GI6271@game.jcrosoft.org>
 <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
 <1345783818-28784-8-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1345783818-28784-8-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 08/18] nfs: add readlink support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 24, 2012 at 06:50:08AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  fs/nfs.c |   93 +++++++++++++++++++++++++++++++++++++++++++-------------------
>  1 file changed, 65 insertions(+), 28 deletions(-)
> 
> diff --git a/fs/nfs.c b/fs/nfs.c
> index 79e667f..a4e1f91 100644
> --- a/fs/nfs.c
> +++ b/fs/nfs.c
> @@ -605,34 +605,6 @@ static int nfs_read_req(struct file_priv *priv, int offset, int readlen)
>  	return 0;
>  }
>  
> @@ -742,6 +714,70 @@ static struct file_priv *nfs_do_stat(struct device_d *dev, const char *filename,
>  	return priv;
>  }
>  
> +static int nfs_readlink_req(struct file_priv *priv, char* buf, size_t size)
> +{
> +	uint32_t data[1024];
> +	uint32_t *p;
> +	int len;
> +	int ret;
> +	char *path;
> +	uint32_t *filedata;
> +
> +	p = &(data[0]);
> +	p = rpc_add_credentials(p);
> +
> +	memcpy(p, priv->filefh, NFS_FHSIZE);
> +	p += (NFS_FHSIZE / 4);
> +
> +	len = p - &(data[0]);
> +
> +	ret = rpc_req(priv->npriv, PROG_NFS, NFS_READLINK, data, len);
> +	if (ret)
> +		return ret;
> +
> +	filedata = nfs_packet + sizeof(struct rpc_reply);
> +	filedata++;
> +
> +	len = ntohl(net_read_uint32(filedata)); /* new path length */
> +	filedata++;
> +
> +	path = (char *)filedata;
> +
> +	if (len > size)
> +		len = size;
> +
> +	memcpy(buf, path, len);
> +	buf[len] = 0;

You write past the buffer here.

> +
> +	return 0;
> +}
> +
> +static int nfs_readlink(struct device_d *dev, const char *filename,
> +			char *realname, size_t size)
> +{
> +	struct file_priv *priv;
> +	int ret;
> +	struct stat s;
> +
> +	priv = nfs_do_stat(dev, filename, &s);
> +	if (IS_ERR(priv))
> +		return PTR_ERR(priv);
> +
> +

unnecessary blank line.

> +	if (S_ISDIR(s.st_mode))
> +		strcat(realname, filename);
> +	else
> +		strcat(realname, dirname((char*)filename));

What do you expect to be in realname?

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
