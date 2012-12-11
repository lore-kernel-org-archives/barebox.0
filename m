Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TiM4m-0006MX-Rb
 for barebox@lists.infradead.org; Tue, 11 Dec 2012 09:24:34 +0000
Date: Tue, 11 Dec 2012 10:24:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121211092430.GQ10369@pengutronix.de>
References: <1355127255-24797-1-git-send-email-w.sang@pengutronix.de>
 <1355127255-24797-4-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1355127255-24797-4-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [PATCH 03/10] ubi: bump ubi-media.h to newest version
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 10, 2012 at 09:14:08AM +0100, Wolfram Sang wrote:
> Needed for ubiformat, we are interested in image_seq especially.
> 
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> ---
>  include/mtd/ubi-media.h |   57 +++++++++++++++++++++++++++--------------------
>  1 file changed, 33 insertions(+), 24 deletions(-)
> 
> diff --git a/include/mtd/ubi-media.h b/include/mtd/ubi-media.h
> index cd1bd8e..08bec3e 100644
> --- a/include/mtd/ubi-media.h
> +++ b/include/mtd/ubi-media.h
> @@ -11,6 +11,9 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
>   * the GNU General Public License for more details.
>   *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA

Could you drop this hunk? I just patched out all addresses of the FSF.
The above is outdated anyway.

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
